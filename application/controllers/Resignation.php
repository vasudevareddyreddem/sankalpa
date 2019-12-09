<?php
defined('BASEPATH') OR exit('No direct script access allowed');
@include_once( APPPATH . 'controllers/Sidebar.php');

class Resignation extends sidebar {
	public function __construct() 
	{
		parent::__construct();	
	
		$this->load->model('Leaves_model');
	}
	public function index()
	{	
		if($this->session->userdata('hms_details'))
			{
				$l_data=$this->session->userdata('hms_details');
				$this->load->view('resignation/add');
				$this->load->view('admin/footer');
			}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
	}
	public function lists()
	{	
		if($this->session->userdata('hms_details'))
			{
				$l_data=$this->session->userdata('hms_details');
				if($l_data['role_id']==2){
					$data['r_list']=$this->Leaves_model->get_resignation_list($l_data['a_id']);
					$this->load->view('resignation/list',$data);
				}else{
					$data['r_list']=$this->Leaves_model->get_all_resignation_list();
					//echo '<pre>';print_r($data);exit;
					$this->load->view('resignation/adminlist',$data);
				}
				
				$this->load->view('admin/footer');
			}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
	}	
	public function approvestatus()
	{	
		if($this->session->userdata('hms_details'))
			{
				$l_data=$this->session->userdata('hms_details');
				$r_id=base64_decode($this->uri->segment(3));
				$data['r_type']=base64_decode($this->uri->segment(4));
				$data['r_details']=$this->Leaves_model->get_resignation_details($r_id);
				$this->load->view('resignation/view',$data);
				$this->load->view('admin/footer');
			}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
	}
	
	
	
	public  function addpost(){
		if($this->session->userdata('hms_details'))
			{
			$l_data=$this->session->userdata('hms_details');
			$post=$this->input->post();
			//echo '<pre>';print_r($post);exit;
				$add=array(
					'reason'=>isset($post['reason'])?$post['reason']:'',
					'emp_id'=>isset($l_data['a_id'])?$l_data['a_id']:'',
					'created_at'=>date('Y-m-d H:i:s'),
					'created_by'=>isset($l_data['a_id'])?$l_data['a_id']:'',
					);
				$save=$this->Leaves_model->add_resignation($add);
				if(count($save)>0){
					$this->session->set_flashdata('success',"Resignation added successfully");
					redirect('resignation/lists');
				}else{
					$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
					redirect('resignation');
				}
			}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
	}
	
	public  function delete(){
		if($this->session->userdata('hms_details'))
		{
			$l_data=$this->session->userdata('hms_details');
			$l_id=base64_decode($this->uri->segment(3));
			$u_data=array(
			'status'=>3,
			'read_cnt'=>1,
			'updated_at'=>date('Y-m-d H:i:s'),
			);
			//echo '<pre>';print_r($post);exit;
			$update=$this->Leaves_model->update_resignation($l_id,$u_data);
			if(count($update)>0){
				$this->session->set_flashdata('success',"resignation deleted successfully");
				redirect('resignation/lists');
			}else{
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('resignation/lists');
			}
		}else{
			$this->session->set_flashdata('error','Please login to continue');
			redirect('admin');
		}
	}
	public  function updatepost(){
		if($this->session->userdata('hms_details'))
			{
			$l_data=$this->session->userdata('hms_details');
			$post=$this->input->post();
			if(isset($post['type']) && $post['type']=='with notice period'){
				$effectiveDate=date('Y-m-d');
				$mont="+".$post['n_p_months']." months";
				$l_date = date('Y-m-d', strtotime($mont, strtotime($effectiveDate)));
			}else{
				$l_date = date('Y-m-d', strtotime($post['final_date']));
			}
				$u_d=array(
					'status'=>isset($post['stat'])?$post['stat']:'',
					'read_cnt'=>1,
					'comment'=>isset($post['comment'])?$post['comment']:'',
					'last_date'=>isset($l_date)?$l_date:'',
					'updated_at'=>date('Y-m-d H:i:s'),
					'updated_by'=>isset($l_data['a_id'])?$l_data['a_id']:'',
					);
				//echo '<pre>';print_r($add);exit;
				$update=$this->Leaves_model->update_resignation($post['r_id'],$u_d);
				if(count($update)>0){
					$this->session->set_flashdata('success',"Resignation updated successfully");
					redirect('resignation/lists');
				}else{
					$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
					redirect('resignation/approvestatus/'.base64_encode($post['r_id']));
				}
			}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
	}
	
}
