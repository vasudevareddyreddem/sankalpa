<?php
defined('BASEPATH') OR exit('No direct script access allowed');
@include_once( APPPATH . 'controllers/Sidebar.php');

class Calendar extends sidebar {
	public function __construct() 
	{
		parent::__construct();	
	
		$this->load->model('Employee_model');
	}
	public function index()
	{	
		if($this->session->userdata('hms_details'))
			{
				$l_data=$this->session->userdata('hms_details');
				$data['e_department']=$this->Employee_model->get_emp_department_lists();
				$data['e_branch']=$this->Employee_model->get_branches_list();
				$post=$this->input->post();
				if(isset($post['department']) && $post['department']!=''){
					$data['p_data']=$post;
					$data['emp_list']=$this->Employee_model->get_search_emp_wise_list($post['branch'],$post['department'],$post['year'],$post['month']);
				}else{
					$data['p_data']=array();
					$data['emp_list']=$this->Employee_model->get_emp_wise_list(date('Y-m-d'));
					//echo '<pre>';print_r($data);exit;
				}
				//echo '<pre>';print_r($data['emp_list']);exit;
				$this->load->view('employee/emp_calender',$data);
				$this->load->view('admin/footer');
			}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
	}
	
	public function get_emp_login_data(){
		$post=$this->input->post();
		$emp_data=$this->Employee_model->get_emp_login_data($post['a_id'],$post['l_date']);
		$e_data=$this->Employee_model->get_pop_emp_data($post['a_id']);
		//echo $this->db->last_query();exit;
		$leave=$this->Employee_model->get_emp_leave($post['a_id'],$post['l_date']);
		if($emp_data['login_time']!='' && $emp_data['login_time']!='0000-00-00 00:00:00'){
			$etime=$emp_data['login_time'];
		}else{
			$etime='';
		}
		if($emp_data['logout_time']!='' && $emp_data['logout_time']!='0000-00-00 00:00:00'){
			$ctime=$emp_data['logout_time'];
			
		}else{
			$ctime='';
		}
		if(isset($leave['l_type']) && $leave['l_type']!=''){
			$l_leave='1';
		}else{
			$l_leave='';
		}
		$datetime1 = new DateTime($etime);
		$datetime2 = new DateTime($ctime);
		$interval = $datetime1->diff($datetime2);
		$diff_in_hrs =$interval->format('%h');
		$diff_in_mins =$interval->format('%i');
		if($l_leave==1){
			$hrs='leave';
		}else{
			if($emp_data['hours']==''){
				$hrs=$diff_in_hrs.':'.$diff_in_mins;
				$tt=explode(":",$hrs);
			}else{
				$hrs=$emp_data['hours'];
				$tt=explode(":",$hrs);
			}
		}
		$datas['empname']=isset($e_data['name'])?$e_data['name']:'';
		$datas['b_name']=isset($e_data['branchname'])?$e_data['branchname']:'';
		$datas['d_name']=isset($e_data['departname'])?$e_data['departname']:'';
		$datas['emp_code']=isset($e_data['code'])?$e_data['code']:'';
		$datas['date']=isset($post['l_date'])?$post['l_date']:'';;
		$datas['hrs']=$hrs;
		$datas['intime']=$etime;
		$datas['outime']=$ctime;
		$datas['leve']=isset($l_leave)?$l_leave:'';
		$datas['leve_msg']=isset($leave['message'])?'<b>Reason : </b>'.$leave['message']:'';
		if($emp_data['diff_time']!=''){
		$datas['res_text']='Attendance regulation time approved - '.$emp_data['diff_time'].' Hours   ( From Time : '.$emp_data['to_time'].', To Time : '.$emp_data['from_time'].'. ) <br> <strong>Reason :</strong> '.$emp_data['reason'];	
		}else{
		$datas['res_text']='';	
		}
		$datas['diff_time']=isset($emp_data['diff_time'])?$emp_data['diff_time']:'';
		$datas['msg']=1;
		echo json_encode($datas);exit;
		
		//echo '<pre>';print_r($emp_data);exit;
	}
	
	public  function unrread_attadance_cnt(){
		$a_details=$this->Employee_model->get_unread_attence_reg();
		$r_details=$this->Employee_model->get_unread_resignationa_reg();
		if(count($a_details)>0 || count($r_details)>0){
			$data['msg']=1;
			$data['un_ar_cnt']=isset($a_details['unread_cnt'])?$a_details['unread_cnt']:'';
			$data['un_r_cnt']=isset($r_details['unread_cnt'])?$r_details['unread_cnt']:'';
			$data['un_bt_cnt']=(($a_details['unread_cnt'])+($r_details['unread_cnt']));
			echo json_encode($data);exit;
		}
	}
	
	
}
