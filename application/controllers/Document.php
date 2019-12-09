<?php
defined('BASEPATH') OR exit('No direct script access allowed');
@include_once( APPPATH . 'controllers/Sidebar.php');

class Document extends sidebar {
	public function __construct() 
	{
		parent::__construct();	
	
		$this->load->model('Document_model');
	}
	public function index()
	{	
		if($this->session->userdata('hms_details'))
			{
				$l_data=$this->session->userdata('hms_details');
				$data['d_list']=$this->Document_model->d_list();
				//echo '<pre>';print_r($data);exit;
				$this->load->view('documents/list',$data);
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
				$data['d_list']=$this->Document_model->d_active_list();
				//echo '<pre>';print_r($data);exit;
				$this->load->view('documents/view',$data);
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
				$this->load->view('documents/add');
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
			$data['d']=$this->Document_model->details($d_id);
			$this->load->view('documents/edit',$data);
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
					if(isset($_FILES['document']['name']) && $_FILES['document']['name']!=''){
					$temp = explode(".", $_FILES["document"]["name"]);
					$document = round(microtime(true)) . '.' . end($temp);
					move_uploaded_file($_FILES['document']['tmp_name'], "assets/document/" . $document);
					}
					$add=array(
					'title'=>isset($post['title'])?$post['title']:'',
					'description'=>isset($post['description'])?$post['description']:'',
					'document'=>$document,
					'created_at'=>date('Y-M-d H:i:s'),
					'created_by'=>isset($l_data['a_id'])?$l_data['a_id']:'',
					);
				$save=$this->Document_model->save($add);
				if(count($save)>0){
					$this->session->set_flashdata('success',"Document added successfully");
					redirect('document');
				}else{
					$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
					redirect('document/add');
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
			//echo '<pre>';print_r($post);exit;
			$d=$this->Document_model->details($post['d_id']);
			if(isset($_FILES['document']['name']) && $_FILES['document']['name']!=''){
				unlink('assets/document/'.$d['document']);
				$temp = explode(".", $_FILES["document"]["name"]);
				$document = round(microtime(true)) . '.' . end($temp);
				move_uploaded_file($_FILES['document']['tmp_name'], "assets/document/" . $document);
			}else{
				$document=$d['document'];
			}
			$u_data=array(
				'title'=>isset($post['title'])?$post['title']:'',
				'description'=>isset($post['description'])?$post['description']:'',
				'document'=>$document,
				'updated_at'=>date('Y-M-d H:i:s'),
			);
			$update=$this->Document_model->update($post['d_id'],$u_data);
			if(count($update)>0){
				$this->session->set_flashdata('success',"Document updated successfully");
				redirect('document');
			}else{
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('document/edit/'.base64_encode($post['d_id']));
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
			$update=$this->Document_model->update($d_id,$u_data);
			if(count($update)>0){
				if($statu=1){
					$this->session->set_flashdata('success',"Document activated successfully");
				}else{
					$this->session->set_flashdata('success',"Document deactivated successfully");
				}
				redirect('document');
			}else{
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('document');
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
			$update=$this->Document_model->update($d_id,$u_data);
			if(count($update)>0){
				$this->session->set_flashdata('success',"Document deleted successfully");
				redirect('document');
			}else{
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('document');
			}
		}else{
			$this->session->set_flashdata('error','Please login to continue');
			redirect('admin');
		}
	}
	
}
