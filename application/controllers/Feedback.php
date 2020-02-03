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
		$d['d_list']=$this->Feedback_model->d_list();
		$d['l_list']=$this->Feedback_model->location_list();
		$d['s_list']=$this->Feedback_model->source_list();
		//echo '<pre>';print_r($d);exit;
		$this->load->view('html/ipd',$d);
	}
	public function opd()
	{	
		$d['f_q']=$this->Feedback_model->get_opd_question_list('OPD');
		$d['d_list']=$this->Feedback_model->d_list();
		$d['l_list']=$this->Feedback_model->location_list();
		$d['s_list']=$this->Feedback_model->source_list();

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
			'location'=>isset($post['location'])?$post['location']:'',
			'department'=>isset($post['department'])?$post['department']:'',
			'source'=>isset($post['source'])?$post['source']:'',
			's_name'=>isset($post['s_name'])?$post['s_name']:'',
			'created_at'=>date('Y-m-d h:i:s'),
			'date'=>date('Y-m-d'),
		);
		//echo '<pre>';print_r($post);exit;
		$save=$this->Feedback_model->save_feedback($ad);
		if(count($save)>0){
			
			$cnt=1;foreach($post['qus'] as $key=>$li){
					$p=($post['anser'][$cnt]);
					if($p=='Poor'){
						$st=1;
					}else if($p=='Average'){
						$st="2";
					}else if($p=='Good'){
						$st="3";
					}else if($p=='Very good'){
						$st="4";
					}else if($p=='Excellent'){
						$st="5";
					}				
					$qa=array(
						'f_b_id'=>isset($save)?$save:'',
						'qno'=>isset($li)?$li:'',
						'q_id'=>isset($key)?$key:'',
						'answer'=>isset($post['anser'][$cnt])?$post['anser'][$cnt]:'',
						'rating'=>isset($st)?$st:'',
						'date'=>date('Y-m-d'),
						'created_at'=>date('Y-m-d h:i:s'),
					);
					$this->Feedback_model->save_question_answer($qa);
				$cnt++;
			}
			
			/* sms */
				/*$apikey=$this->config->item('apikey');
				$sender=$this->config->item('sender');
				$mob=isset($post['phone_no'])?$post['phone_no']:'';
				$hurl="https://www.google.com/search?ei=HrkVXuPZJZuf4-EPodqNuAo&q=sankalpa+super+speciality+hospita";
				$msg ="Dear ".$post['name'].", we'd love to  get your honest feedback about your experience : ".$hurl." ";
				$ch2 = curl_init();
				curl_setopt($ch2, CURLOPT_URL,'http://sms.pearlsms.com/public/sms/send');
				curl_setopt($ch2, CURLOPT_POST, 1);
				curl_setopt($ch2, CURLOPT_POSTFIELDS,'sender='.$sender.'&smstype=TRANS&numbers='.$mob.'&apikey='.$apikey.'&message='.$msg.'');
				curl_setopt($ch2, CURLOPT_RETURNTRANSFER, true);
				$server_output = curl_exec ($ch2);
				curl_close ($ch2);	*/
			/* sms */
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
	public  function manufedsubmit(){
				$post=$this->input->post();
				$f_id=$this->uri->segment(3);
				$fd=$this->Feedback_model->get_get_feedback_details($f_id);

				//echo '<pre>';print_r($fd);exit;
				$apikey=$this->config->item('apikey');
				$sender=$this->config->item('sender');
				$mob=isset($fd['phone_no'])?$fd['phone_no']:'';
				$hurl="https://www.google.com/search?client=firefox-b-d&channel=trow2&sxsrf=ACYBGNTh311-_MZ-S52vGd1M99dUo5I7Og%3A1580725135240&ei=j_M3XrCoDo-T4-EPxImC4AI&q=sankalpa+super+speciality+hospital+in+tirupati&oq=sankala+super+hospital+in+tirupathi&gs_l=psy-ab.3.0.0i8i13i30.10154.13544..15112...2.2..0.125.702.0j6......0....1..gws-wiz.......0i71j0i13.shk7F3qTp9o#lrd=0x3a4d4ba9e58933eb:0x3781e0a648c68044,3,,,";
				$msg ="Dear ".$fd['name'].", we'd love to  get your honest feedback about your experience : ".$hurl." ";
				$ch2 = curl_init();
				curl_setopt($ch2, CURLOPT_URL,'http://sms.pearlsms.com/public/sms/send');
				curl_setopt($ch2, CURLOPT_POST, 1);
				curl_setopt($ch2, CURLOPT_POSTFIELDS,'sender='.$sender.'&smstype=TRANS&numbers='.$mob.'&apikey='.$apikey.'&message='.$msg.'');
				curl_setopt($ch2, CURLOPT_RETURNTRANSFER, true);
				$server_output = curl_exec ($ch2);
				curl_close ($ch2);	
			/* sms */
			$this->session->set_flashdata('success',"Feedback sent successfully");
			redirect('user/feedback');
		
	}
	
}
