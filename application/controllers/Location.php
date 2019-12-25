<?php
defined('BASEPATH') OR exit('No direct script access allowed');
@include_once( APPPATH . 'controllers/Sidebar.php');
class Location extends sidebar {
	public function __construct() 
	{
		parent::__construct();	
	
		$this->load->model('Location_model');
	}
	public function index()
	{	
		if($this->session->userdata('hms_details'))
			{
				$l_data=$this->session->userdata('hms_details');
				$data['l_list']=$this->Location_model->location_list($l_data['a_id']);
				$this->load->view('location/list',$data);
				$this->load->view('admin/footer');
			}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
	}
	public function edit()
	{	
		if($this->session->userdata('hms_details'))
			{
				$l_data=$this->session->userdata('hms_details');
				$qid=base64_decode($this->uri->segment(3));
				$data['q_d']=$this->Location_model->get_location_details($qid);
				//echo '<pre>';print_r($data);exit;
				$this->load->view('location/edit',$data);
				$this->load->view('admin/footer');
			}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
	}
	public function add()
	{	
		if($this->session->userdata('hms_details'))
			{
				$l_data=$this->session->userdata('hms_details');
				$this->load->view('location/add');
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
				$data['w_list']=$this->Work_model->emp_work_list($l_data['a_id']);
				//echo '<pre>';print_r($data);exit;
				$this->load->view('work/emplist',$data);
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
			 $check=$this->Location_model->check_location_exit($post['l_name']);
			 if(count($check)>0){
				$this->session->set_flashdata('error',"Already added. Please check it once");
				redirect('location/add'); 
			 }
				$add=array(
						'l_name'=>isset($post['l_name'])?$post['l_name']:'',
						'created_at'=>date('Y-m-d H:i:s'),
						'created_by'=>isset($l_data['a_id'])?$l_data['a_id']:'',
						);
				$save=$this->Location_model->save_location($add);
				if(count($save)>0){
					$this->session->set_flashdata('success',"Location added successfully");	
					redirect('location');
				}else{
					$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
					redirect('location/add');
				}
			}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
	}
	public  function editpost(){
		if($this->session->userdata('hms_details'))
			{
			 $l_data=$this->session->userdata('hms_details');
			 $post=$this->input->post();
			 $q_d=$this->Location_model->get_location_details($post['l_id']);
			 if($q_d['l_name']!=$post['l_name']){
				$check=$this->Location_model->check_location_exit($post['l_name']);
				 if(count($check)>0){
					$this->session->set_flashdata('error',"Already added. Please check it once");
					redirect('location/edit/'.base64_encode($post['l_id'])); 
				 } 
			 }
			 $add=array(
						'l_name'=>isset($post['l_name'])?$post['l_name']:'',
						'updated_at'=>date('Y-m-d H:i:s'),
						);
				$update=$this->Location_model->location_update($post['l_id'],$add);
				if(count($update)>0){
					$this->session->set_flashdata('success',"Location updated successfully");	
					redirect('location');
				}else{
					$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
					redirect('location/edit/'.base64_encode($post['l_id']));
				}
			}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
	}
	public  function status(){
		if($this->session->userdata('hms_details'))
		{
			$id=base64_decode($this->uri->segment(3));
			$stat=base64_decode($this->uri->segment(4));
			if($stat==1){
				$st=0;
			}else{
				$st=1;
			}
			$u_d=array(
			 'status'=>$st,
			 'updated_at'=>date('Y-m-d H:i:s')
			);
			//echo '<pre>';print_r($u_d);exit;
			$update=$this->Location_model->location_update($id,$u_d);
			if(count($update)>0){
				if($stat==0){
					$this->session->set_flashdata('success',"Location successfully activate");
				}else{
					$this->session->set_flashdata('success',"Location successfully deactivate");
				}
				redirect('location');
			}else{
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('location');
			}
		}else{
			$this->session->set_flashdata('error','Please login to continue');
			redirect('admin');
		}
	}
	public  function delete(){
		if($this->session->userdata('hms_details'))
		{
			$id=base64_decode($this->uri->segment(3));
			$u_d=array(
			 'status'=>2,
			 'updated_at'=>date('Y-m-d H:i:s')
			);
			//echo '<pre>';print_r($u_d);exit;
			$update=$this->Location_model->location_update($id,$u_d);
			if(count($update)>0){
				$this->session->set_flashdata('success',"Location successfully deleted");
				redirect('location');
			}else{
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('location');
			}
		}else{
			$this->session->set_flashdata('error','Please login to continue');
			redirect('admin');
		}
	}
	
	
	
	
}
