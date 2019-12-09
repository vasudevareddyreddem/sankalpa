<?php
defined('BASEPATH') OR exit('No direct script access allowed');
@include_once( APPPATH . 'controllers/Sidebar.php');

class Holidays extends sidebar {
	public function __construct() 
	{
		parent::__construct();	
	
		$this->load->model('Holidays_model');
	}
	public function index()
	{	
		if($this->session->userdata('hms_details'))
			{
				$l_data=$this->session->userdata('hms_details');
				$data['hl']=$this->Holidays_model->h_list();
				//echo '<pre>';print_r($data);exit;
				$this->load->view('holidays/list',$data);
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
				$this->load->view('holidays/add');
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
			$data['d']=$this->Holidays_model->details($d_id);
			$this->load->view('holidays/edit',$data);
			$this->load->view('admin/footer');
		}else{
			$this->session->set_flashdata('error','Please login to continue');
			redirect('admin');
		}
	}
	public function view()
	{	
		if($this->session->userdata('hms_details'))
			{
				$l_data=$this->session->userdata('hms_details');
				$data['h_list']=$this->Holidays_model->h_active_list();
				//echo '<pre>';print_r($data);exit;
				$this->load->view('holidays/view',$data);
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
					'date'=>isset($post['date'])?$post['date']:'',
					'festival'=>isset($post['festival'])?$post['festival']:'',
					'day_name'=>isset($post['day_name'])?$post['day_name']:'',
					'created_at'=>date('Y-M-d H:i:s'),
					'created_by'=>isset($l_data['a_id'])?$l_data['a_id']:'',
					);
				$save=$this->Holidays_model->save($add);
				if(count($save)>0){
					$this->session->set_flashdata('success',"Holidays added successfully");
					redirect('holidays');
				}else{
					$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
					redirect('holidays/add');
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
			$u_data=array(
				'date'=>isset($post['date'])?$post['date']:'',
					'festival'=>isset($post['festival'])?$post['festival']:'',
					'day_name'=>isset($post['day_name'])?$post['day_name']:'',
				'updated_at'=>date('Y-M-d H:i:s'),
			);
			$update=$this->Holidays_model->update($post['h_id'],$u_data);
			if(count($update)>0){
				$this->session->set_flashdata('success',"Holiday updated successfully");
				redirect('holidays');
			}else{
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('holidays/edit/'.base64_encode($post['h_id']));
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
			$update=$this->Holidays_model->update($d_id,$u_data);
			if(count($update)>0){
				if($statu==0){
					$this->session->set_flashdata('success',"Holidays activated successfully");
				}else{
					$this->session->set_flashdata('success',"Holidays deactivated successfully");
				}
				redirect('holidays');
			}else{
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('holidays');
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
			$update=$this->Holidays_model->update($d_id,$u_data);
			if(count($update)>0){
				$this->session->set_flashdata('success',"Holiday deleted successfully");
				redirect('holidays');
			}else{
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('holidays');
			}
		}else{
			$this->session->set_flashdata('error','Please login to continue');
			redirect('admin');
		}
	}
	
}
