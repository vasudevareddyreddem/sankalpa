<?php
defined('BASEPATH') OR exit('No direct script access allowed');
@include_once( APPPATH . 'controllers/Sidebar.php');
class Questions extends sidebar {
	public function __construct() 
	{
		parent::__construct();	
	
		$this->load->model('Questions_model');
	}
	public function index()
	{	
		if($this->session->userdata('hms_details'))
			{
				$l_data=$this->session->userdata('hms_details');
				$data['q_list']=$this->Questions_model->questions_list($l_data['a_id']);
				$this->load->view('question/list',$data);
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
				$data['q_d']=$this->Questions_model->get_question_details($qid);
				$this->load->view('question/edit',$data);
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
				$this->load->view('question/add');
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
			 $check=$this->Questions_model->check_question_exit($post['type'],$post['qno'],$post['question']);
			 if(count($check)>0){
				$this->session->set_flashdata('error',"Already added. Please check it once");
				redirect('questions/add'); 
			 }
			 //echo '<pre>';print_r($post);exit;
				$add=array(
						'name'=>isset($post['question'])?$post['question']:'',
						'qno'=>isset($post['qno'])?$post['qno']:'',
						'type'=>isset($post['type'])?$post['type']:'',
						'created_at'=>date('Y-m-d H:i:s'),
						'created_by'=>isset($l_data['a_id'])?$l_data['a_id']:'',
						);
				$save=$this->Questions_model->save_question($add);
				if(count($save)>0){
					$this->session->set_flashdata('success',"Question added successfully");	
					redirect('questions');
				}else{
					$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
					redirect('questions/add');
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
			 $q_d=$this->Questions_model->get_question_details($post['q_id']);
			 if($q_d['qno']!=$post['qno'] || $q_d['type']!=$post['type'] || $q_d['name']!=$post['question']){
				$check=$this->Questions_model->check_question_exit($post['type'],$post['qno'],$post['question']);
				 if(count($check)>0){
					$this->session->set_flashdata('error',"Already added. Please check it once");
					redirect('questions/edit/'.base64_encode($post['q_id'])); 
				 } 
			 }
			 $add=array(
						'name'=>isset($post['question'])?$post['question']:'',
						'qno'=>isset($post['qno'])?$post['qno']:'',
						'type'=>isset($post['type'])?$post['type']:'',
						'updated_at'=>date('Y-m-d H:i:s'),
						);
				$update=$this->Questions_model->question_update($post['q_id'],$add);
				if(count($update)>0){
					$this->session->set_flashdata('success',"Question updated successfully");	
					redirect('questions');
				}else{
					$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
					redirect('questions/edit/'.base64_encode($post['q_id']));
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
			$update=$this->Questions_model->question_update($id,$u_d);
			if(count($update)>0){
				if($stat==0){
					$this->session->set_flashdata('success',"Question successfully activate");
				}else{
					$this->session->set_flashdata('success',"Question successfully deactivate");
				}
				redirect('questions');
			}else{
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('questions');
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
			$update=$this->Questions_model->question_update($id,$u_d);
			if(count($update)>0){
				$this->session->set_flashdata('success',"Question successfully deleted");
				redirect('questions');
			}else{
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('questions');
			}
		}else{
			$this->session->set_flashdata('error','Please login to continue');
			redirect('admin');
		}
	}
	
	
	
	
}
