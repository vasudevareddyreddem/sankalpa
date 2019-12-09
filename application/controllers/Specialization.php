<?php
defined('BASEPATH') OR exit('No direct script access allowed');
@include_once( APPPATH . 'controllers/Sidebar.php');

class Specialization extends sidebar {
	public function __construct() 
	{
		parent::__construct();
		$this->load->model('Specialization_model');
	}
	public function index()
	{	
		if($this->session->userdata('hms_details'))
			{
				$l_data=$this->session->userdata('hms_details');
				$data['s_list']=$this->Specialization_model->s_list($l_data['a_id']);
				$this->load->view('specialization/list',$data);
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
				$this->load->view('specialization/add');
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
			$s_id=base64_decode($this->uri->segment(3));
			$data['s']=$this->Specialization_model->details($s_id);
			$this->load->view('specialization/edit',$data);
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
				foreach($post['s_name'] as $li){
					$check=$this->Specialization_model->check($li);
					if(count($check)>0){
						$this->session->set_flashdata('error',"specialization already exists. Please another specialization.");
						redirect('specialization/add');
					}
				}
				foreach($post['s_name'] as $li){
					if($li!=''){
						$add=array(
						'name'=>isset($li)?$li:'',
						'created_at'=>date('Y-m-d H:i:s'),
						'created_by'=>isset($l_data['a_id'])?$l_data['a_id']:'',
						);
						$save=$this->Specialization_model->save($add);
					}
				}
				if(count($save)>0){
					$this->session->set_flashdata('success',"specialization added successfully");
					redirect('specialization');
				}else{
					$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
					redirect('specialization/add');
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
			$s=$this->Specialization_model->details($post['s_id']);
			if($s['name']!=$post['s_name']){
				$check=$this->Specialization_model->check($post['s_name']);
				if(count($check)>0){
					$this->session->set_flashdata('error',"specialization already exists. Please another specialization.");
					redirect('specialization/edit/'.base64_encode($post['s_id']));
				}
			}
			$u_data=array(
				'name'=>isset($post['s_name'])?$post['s_name']:'',
				'updated_at'=>date('Y-m-d H:i:s'),
				);
			$update=$this->Specialization_model->update($post['s_id'],$u_data);
			if(count($update)>0){
				$this->session->set_flashdata('success',"specialization updated successfully");
				redirect('specialization');
			}else{
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('specialization/edit/'.base64_encode($post['s_id']));
			}
		}else{
			$this->session->set_flashdata('error','Please login to continue');
			redirect('admin');
		}			
	}
	
	public  function status(){
		if($this->session->userdata('hms_details'))
		{
			$s_id=base64_decode($this->uri->segment(3));
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
			$update=$this->Specialization_model->update($s_id,$u_data);
			if(count($update)>0){
				if($statu=1){
					$this->session->set_flashdata('success',"specialization activated successfully");
				}else{
					$this->session->set_flashdata('success',"specialization deactivated successfully");
				}
				redirect('specialization');
			}else{
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('specialization');
			}
		}else{
			$this->session->set_flashdata('error','Please login to continue');
			redirect('admin');
		}
	}
	
	public  function delete(){
		if($this->session->userdata('hms_details'))
		{
			$s_id=base64_decode($this->uri->segment(3));
			$u_data=array(
			'status'=>2,
			'updated_at'=>date('Y-m-d H:i:s')
			);
			$update=$this->Specialization_model->update($s_id,$u_data);
			if(count($update)>0){
				$this->session->set_flashdata('success',"specialization deleted successfully");
				redirect('specialization');
			}else{
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('specialization');
			}
		}else{
			$this->session->set_flashdata('error','Please login to continue');
			redirect('admin');
		}
	}
	
}
