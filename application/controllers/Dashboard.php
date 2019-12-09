<?php
defined('BASEPATH') OR exit('No direct script access allowed');
@include_once( APPPATH . 'controllers/Sidebar.php');

class Dashboard extends sidebar {
	public function __construct() 
	{
		parent::__construct();
		$this->load->model('Dashboard_model');
	}
	public function index()
	{	
		if($this->session->userdata('hms_details'))
		{
			$l_d=$this->session->userdata('hms_details');
			//echo '<pre>';print_r($l_d);exit; 
			if($l_d['role_id']==2){
				redirect('profile');
			}if($l_d['role_id']==5){
				$data['emp_act']=$this->Dashboard_model->get_accounts_count(2);
				$data['emp_present']=$this->Dashboard_model->get_present_absent_list(date('Y-m-d'));
				$this->load->view('admin/accountdashboard',$data);
			}else if($l_d['role_id']==1){
				$data['hr_act']=$this->Dashboard_model->get_accounts_count(3);
				$data['manager_act']=$this->Dashboard_model->get_accounts_count(4);
				$data['account_act']=$this->Dashboard_model->get_accounts_count(5);
				$data['emp_act']=$this->Dashboard_model->get_accounts_count(2);
				$data['emp_present']=$this->Dashboard_model->get_present_absent_list(date('Y-m-d'));
				//echo '<pre>';print_r($data);exit; 
				$this->load->view('admin/dashboard',$data);
			}else if($l_d['role_id']==3){
				$data['emp_act']=$this->Dashboard_model->get_accounts_count(2);
				$data['emp_present']=$this->Dashboard_model->get_present_absent_list(date('Y-m-d'));
				//echo '<pre>';print_r($data);exit; 
				$this->load->view('admin/hrdashboard',$data);
			}else if($l_d['role_id']==4){
				$dep_list=$this->Admin_model->manager_departments($l_d['a_id']);
					if(isset($dep_list) && count($dep_list)>0){
						foreach($dep_list as $li){
							$dli[]=$li['d_id'];
						}
					}else{
						$dli[]=array();
					}
				$this->load->model('Employee_model');
				$data['emp_act']=$this->Employee_model->department_emp_list($dli);
				$data['emp_present']=$this->Dashboard_model->get_manager_present_absent_list($dli,date('Y-m-d'));
				//echo '<pre>';print_r($data);exit; 
				$this->load->view('admin/managerdashboard',$data);
			}
			$this->load->view('admin/footer');
		}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
	}	
	public  function logout(){
		
		$admindetails=$this->session->userdata('hms_details');
		$check=$this->Admin_model->check_login_time($admindetails['a_id'],date('Y-m-d'));
		$ctime=date('Y-m-d H:i:s');
		$datetime1 = new DateTime($check['login_time']);
		$datetime2 = new DateTime($ctime);
		$interval = $datetime1->diff($datetime2);
		$diff_in_hrs =$interval->format('%h');
		$diff_in_mins =$interval->format('%i');
		$logout_data=array(
			'hours'=>$diff_in_hrs.':'.$diff_in_mins,
			'logout_time'=>date('Y-m-d H:i:s'),
		);
		$this->Admin_model->update_login_time_status($check['id'],$logout_data);
		$userinfo = $this->session->userdata('hms_details');
        $this->session->unset_userdata($userinfo);
		$this->session->sess_destroy('hms_details');
		$this->session->unset_userdata('hms_details');
        redirect('admin');
	}
}
