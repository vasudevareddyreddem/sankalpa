<?php
defined('BASEPATH') OR exit('No direct script access allowed');
@include_once( APPPATH . 'controllers/Sidebar.php');
class Source extends sidebar {
	public function __construct() 
	{
		parent::__construct();	
	
		$this->load->model('Source_model');
	}
	public function index()
	{	
		if($this->session->userdata('hms_details'))
			{
				$l_data=$this->session->userdata('hms_details');
				$data['l_list']=$this->Source_model->source_list($l_data['a_id']);
				$this->load->view('source/list',$data);
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
				$data['q_d']=$this->Source_model->get_source_details($qid);
				//echo '<pre>';print_r($data);exit;
				$this->load->view('source/edit',$data);
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
				$this->load->view('source/add');
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
			 $check=$this->Source_model->check_source_exit($post['l_name']);
			 if(count($check)>0){
				$this->session->set_flashdata('error',"Already added. Please check it once");
				redirect('source/add'); 
			 }
				$add=array(
						's_name'=>isset($post['l_name'])?$post['l_name']:'',
						'created_at'=>date('Y-m-d H:i:s'),
						'created_by'=>isset($l_data['a_id'])?$l_data['a_id']:'',
						);
				$save=$this->Source_model->save_source($add);
				if(count($save)>0){
					$this->session->set_flashdata('success',"source added successfully");	
					redirect('source');
				}else{
					$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
					redirect('source/add');
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
			 $q_d=$this->Source_model->get_source_details($post['l_id']);
			 if($q_d['s_name']!=$post['l_name']){
				$check=$this->Source_model->check_source_exit($post['l_name']);
				 if(count($check)>0){
					$this->session->set_flashdata('error',"Already added. Please check it once");
					redirect('source/edit/'.base64_encode($post['l_id'])); 
				 } 
			 }
			 $add=array(
						's_name'=>isset($post['l_name'])?$post['l_name']:'',
						'updated_at'=>date('Y-m-d H:i:s'),
						);
				$update=$this->Source_model->source_update($post['l_id'],$add);
				if(count($update)>0){
					$this->session->set_flashdata('success',"source updated successfully");	
					redirect('source');
				}else{
					$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
					redirect('source/edit/'.base64_encode($post['l_id']));
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
			$update=$this->Source_model->source_update($id,$u_d);
			if(count($update)>0){
				if($stat==0){
					$this->session->set_flashdata('success',"source successfully activate");
				}else{
					$this->session->set_flashdata('success',"source successfully deactivate");
				}
				redirect('source');
			}else{
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('source');
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
			$update=$this->Source_model->source_update($id,$u_d);
			if(count($update)>0){
				$this->session->set_flashdata('success',"source successfully deleted");
				redirect('source');
			}else{
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('source');
			}
		}else{
			$this->session->set_flashdata('error','Please login to continue');
			redirect('admin');
		}
	}
	
	
	
	
}
