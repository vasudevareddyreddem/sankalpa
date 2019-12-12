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
		$this->load->view('html/feed_view',$data);
	}
	public function ipd()
	{	
		$this->load->view('html/ipd');
	}
	public function opd()
	{	
		$this->load->view('html/opd');
	}	
	public  function opdpost(){
		$post=$this->input->post();
		$ad=array(
			'name'=>isset($post['name'])?$post['name']:'',
			'type'=>isset($post['type'])?$post['type']:'',
			'p_no'=>isset($post['pod_no'])?$post['pod_no']:'',
			'email_id'=>isset($post['email_id'])?$post['email_id']:'',
			'phone_no'=>isset($post['phone_no'])?$post['phone_no']:'',
			'qus1'=>isset($post['qus1'])?$post['qus1']:'',
			'qus2'=>isset($post['qus2'])?$post['qus2']:'',
			'qus3'=>isset($post['qus3'])?$post['qus3']:'',
			'qus4'=>isset($post['qus4'])?$post['qus4']:'',
			'qus5'=>isset($post['qus5'])?$post['qus5']:'',
			'qus6'=>isset($post['qus6'])?$post['qus6']:'',
			'qus7'=>isset($post['qus7'])?$post['qus7']:'',
			'qus8'=>isset($post['qus8'])?$post['qus8']:'',
			'qus9'=>isset($post['qus9'])?$post['qus9']:'',
			'qus10'=>isset($post['qus10'])?$post['qus10']:'',
			'qus11'=>isset($post['qus11'])?$post['qus11']:'',
			'comment'=>isset($post['comment'])?$post['comment']:'',
			'created_at'=>date('Y-m-d h:i:s'),
		);
		$save=$this->Feedback_model->save_feedback($ad);
		if(count($save)>0){
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
