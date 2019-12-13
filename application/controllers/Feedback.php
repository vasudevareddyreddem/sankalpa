<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Feedback extends CI_Controller {

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
		$this->load->model('Feedback_model');
	}
	public function index()
	{	
		$this->load->view('html/index');
	}
	public function list_view()
	{	
		$data['f_list']=$this->Feedback_model->get_all_feedback_list();
		$this->load->view('html/list_view',$data);
	}
	public function view()
	{	
		$fid=base64_decode($this->uri->segment(3));
		$data['f_d']=$this->Feedback_model->get_get_feedback_details($fid);
		$data['f_q_d']=$this->Feedback_model->get_get_question_details($fid);
		//echo '<pre>';print_r($data);exit;
		$this->load->view('html/feed_view',$data);
	}
	public function ipd()
	{	
		$d['f_q']=$this->Feedback_model->get_opd_question_list('IPD');
		//echo '<pre>';print_r($d);exit;
		$this->load->view('html/ipd',$d);
	}
	public function opd()
	{	
		$d['f_q']=$this->Feedback_model->get_opd_question_list('OPD');
		//echo '<pre>';print_r($d);exit;
		$this->load->view('html/opd',$d);
	}	
	public  function opdpost(){
		$post=$this->input->post();
		
		$ad=array(
			'name'=>isset($post['name'])?$post['name']:'',
			'type'=>isset($post['type'])?$post['type']:'',
			'p_no'=>isset($post['pod_no'])?$post['pod_no']:'',
			'email_id'=>isset($post['email_id'])?$post['email_id']:'',
			'phone_no'=>isset($post['phone_no'])?$post['phone_no']:'',
			'comment'=>isset($post['comment'])?$post['comment']:'',
			'recommend'=>isset($post['recommend'])?$post['recommend']:'',
			'created_at'=>date('Y-m-d h:i:s'),
		);
		//echo '<pre>';print_r($post);exit;
		$save=$this->Feedback_model->save_feedback($ad);
		if(count($save)>0){
			
			$cnt=1;foreach($post['qus'] as $key=>$li){ 
					$qa=array(
						'f_b_id'=>isset($save)?$save:'',
						'qno'=>isset($li)?$li:'',
						'q_id'=>isset($key)?$key:'',
						'answer'=>isset($post['anser'][$cnt])?$post['anser'][$cnt]:'',
						'date'=>date('Y-m-d'),
						'created_at'=>date('Y-m-d h:i:s'),
					);
					$this->Feedback_model->save_question_answer($qa);
				$cnt++;
			}
			$this->session->set_flashdata('success',"Feedback sent successfully");
			if($post['f_type']==1){
				redirect('feedback/ipd');
			}else{
				redirect('feedback/opd');
			}
		}else{
			$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
			if($post['f_type']==1){
				redirect('feedback/ipd');
			}else{
				redirect('feedback/opd');
			}
		}
	}
	
}
