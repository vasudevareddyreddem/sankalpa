<?php
defined('BASEPATH') OR exit('No direct script access allowed');
@include_once( APPPATH . 'controllers/Sidebar.php');

class Suggestion extends sidebar {
	public function __construct() {
        parent::__construct();
        $this->load->model('Notification_model');
    	
    }
    public function index(){
		if($this->session->userdata('hms_details'))
		{
			$l_data=$this->session->userdata('hms_details');
			if($l_data['role_id']==1){
				$data['emp_list']=$this->Notification_model->get_all_emp_list();
				$data['suggestion_list']=$this->Notification_model->get_all_suggestion_data();
				$this->load->view('suggestion/add',$data);
			}else{
				$data['suggestion_list']=$this->Notification_model->get_suggestion_data($l_data['a_id']);
				//echo '<pre>';print_r($data);exit;
				$this->load->view('suggestion/emp_sug',$data);
			}
			$this->load->view('admin/footer');
		}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
    }
public function suggestionpost(){

		if($this->session->userdata('hms_details'))
		{
			$userdetails=$this->session->userdata('hms_details');
			$emp_d= $this->Notification_model->get_employee_details($userdetails['a_id']);
			$post=$this->input->post();
			//echo '<pre>';print_r($emp_d);exit;
			if(isset($post['a_id']) && $post['a_id']!=''){
				$emp=$post['a_id'];
				$replyemp=$emp_d['a_id'];
				$type='Replayed';
			}else{
				$emp=$emp_d['a_id'];
				$replyemp=$emp_d['a_id'];
				$type='Replay';
			}
			$msgdata=array(
				'a_id'=>$emp,
				'replayed_id'=>$replyemp,
				'comment'=>isset($post['message'])?$post['message']:'',
				'type'=>$type,
				'status'=>1,
				'created_at'=>date('Y-m-d H:i:s'),
				'created_by'=>isset($userdetails['a_id'])?$userdetails['a_id']:'',
				);
				//echo '<pre>';print_r($msgdata);exit;
			$addmsg=$this->Notification_model->save_suggetion_data($msgdata);
			if(count($addmsg)>0){
				$this->session->set_flashdata('success','Your suggestion Successfully submitted');
				redirect('suggestion');
			}else{
				$this->session->set_flashdata('error','Technical problem will occurred .please try again');
				redirect('suggestion');
			}

		}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
		}
	}	
	

}