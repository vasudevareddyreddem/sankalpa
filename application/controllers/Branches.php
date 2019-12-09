<?php
defined('BASEPATH') OR exit('No direct script access allowed');
@include_once( APPPATH . 'controllers/Sidebar.php');

class Branches extends sidebar {
	public function __construct() 
	{
		parent::__construct();	
		$this->load->helper(array('form', 'url'));
		$this->load->library('form_validation');
		$this->load->library('session');
		$this->load->library('email');
		$this->load->library('user_agent');
		$this->load->helper('directory');
		$this->load->helper('security');
		$this->load->model('Admin_model');
		$this->load->model('Branches_model');
	}
	public function index()
	{	
		if($this->session->userdata('hms_details'))
			{
				$l_data=$this->session->userdata('hms_details');
				$data['b_list']=$this->Branches_model->b_list($l_data['a_id']);
				$this->load->view('branches/list',$data);
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
				$this->load->view('branches/add');
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
			$d_id=base64_decode($this->uri->segment(3));
			$data['d']=$this->Branches_model->details($d_id);
			$this->load->view('branches/edit',$data);
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
				$cnt1=0;foreach($post['b_name'] as $li){
					$check=$this->Branches_model->check($post['b_code'][$cnt],$li);
					if(count($check)>0){
						$this->session->set_flashdata('error',"Branch already exists. Please another department.");
						redirect('department/add');
					}
				$cnt1++;}
				$cnt=0;foreach($post['b_name'] as $li){
					if($li!=''){
						$add=array(
						'code'=>isset($post['b_code'][$cnt])?$post['b_code'][$cnt]:'',
						'name'=>isset($post['b_name'][$cnt])?$post['b_name'][$cnt]:'',
						'created_at'=>date('Y-m-d H:i:s'),
						'created_by'=>isset($l_data['a_id'])?$l_data['a_id']:'',
						);
						$save=$this->Branches_model->save($add);
					}
				$cnt++;}
				if(count($save)>0){
					$this->session->set_flashdata('success',"Branch added successfully");
					redirect('branches');
				}else{
					$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
					redirect('branches/add');
				}
				//echo '<pre>';print_r($post);exit;
			}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
	}
	
	public  function editpost(){
	if($this->session->userdata('hms_details'))
		{
			$post=$this->input->post();
			$d=$this->Branches_model->details($post['b_id']);
			if($d['name']!=$post['b_name']){
				$check=$this->Branches_model->check($post['b_code'],$post['b_name']);
				if(count($check)>0){
					$this->session->set_flashdata('error',"Branches already exists. Please another module.");
					redirect('branches/edit/'.base64_encode($post['d_id']));
				}
			}
			$u_data=array(
				'code'=>isset($post['b_code'])?$post['b_code']:'',
				'name'=>isset($post['b_name'])?$post['b_name']:'',
				'updated_at'=>date('Y-m-d H:i:s'),
				);
			$update=$this->Branches_model->update($post['b_id'],$u_data);
			if(count($update)>0){
				$this->session->set_flashdata('success',"Branche updated successfully");
				redirect('branches');
			}else{
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('branches/edit/'.base64_encode($post['b_id']));
			}
		}else{
			$this->session->set_flashdata('error','Please login to continue');
			redirect('admin');
		}			
	}
	
	public  function status(){
		if($this->session->userdata('hms_details'))
		{
			$d_id=base64_decode($this->uri->segment(3));
			$statu=base64_decode($this->uri->segment(4));
			if($statu==1){
				$st=0;	
			}else{
				$st=1;
			}
			$u_data=array(
			'status'=>$st,
			'updated_at'=>date('Y-m-d H:i:s')
			);
			$update=$this->Branches_model->update($d_id,$u_data);
			if(count($update)>0){
				if($statu=1){
					$this->session->set_flashdata('success',"Branche activated successfully");
				}else{
					$this->session->set_flashdata('success',"Branche deactivated successfully");
				}
				redirect('branches');
			}else{
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('branches');
			}
		}else{
			$this->session->set_flashdata('error','Please login to continue');
			redirect('admin');
		}
	}
	
	public  function delete(){
		if($this->session->userdata('hms_details'))
		{
			$d_id=base64_decode($this->uri->segment(3));
			$u_data=array(
			'status'=>2,
			'updated_at'=>date('Y-m-d H:i:s')
			);
			$update=$this->Branches_model->update($d_id,$u_data);
			if(count($update)>0){
				$this->session->set_flashdata('success',"Branche deleted successfully");
				redirect('branches');
			}else{
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('branches');
			}
		}else{
			$this->session->set_flashdata('error','Please login to continue');
			redirect('admin');
		}
	}
	
}
