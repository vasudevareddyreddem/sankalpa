<?php
defined('BASEPATH') OR exit('No direct script access allowed');
@include_once( APPPATH . 'controllers/Sidebar.php');
class Pending extends Sidebar {
		public function __construct()
	{
		parent::__construct();
		$this->load->model('Pending_model');

	}
	public function index()
	{
		if($this->session->userdata('hms_details'))
		{
			$l_data=$this->session->userdata('hms_details');
			$this->load->view('attendance/payslip');
			$this->load->view('admin/footer');
		}else{
			$this->session->set_flashdata('error','Please login to continue');
			redirect('admin');
		}
	
	}
	public function attendance_regulation()
	{
		if($this->session->userdata('hms_details'))
		{
			$l_data=$this->session->userdata('hms_details');
			$data['p_list']=$this->Pending_model->get_attendance_regulation_list();
			//echo '<pre>';print_r($data);exit;
			$this->load->view('pending/list',$data);
			$this->load->view('admin/footer');
		}else{
			$this->session->set_flashdata('error','Please login to continue');
			redirect('admin');
		}
	
	}
public function reject()
	{	
		if($this->session->userdata('hms_details'))
			{
				$l_data=$this->session->userdata('hms_details');
				$post=$this->input->post();
				//echo '<pre>';print_r($post);exit;
				$add=array(
				'status'=>2,
				'read_cnt'=>1,
				'comment'=>isset($post['resson'])?$post['resson']:'',
				'updated_at'=>date('Y-m-d H:i:s'),
				'updated_by'=>isset($l_data['a_id'])?$l_data['a_id']:'',
				);
				$update=$this->Pending_model->update_attendance_regulation(base64_decode($post['lid']),$add);
				if($update){
					$this->session->set_flashdata('success',"Request successfully rejected");
					redirect('pending/attendance_regulation');
				}else{
					$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
					redirect('pending/attendance_regulation');
				}
			}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
	}public function accept()
	{	
		if($this->session->userdata('hms_details'))
			{
				$l_data=$this->session->userdata('hms_details');
				$post=$this->input->post();
				$add=array(
				'status'=>1,
				'read_cnt'=>1,
				'updated_at'=>date('Y-m-d H:i:s'),
				'updated_by'=>isset($l_data['a_id'])?$l_data['a_id']:'',
				);
				$update=$this->Pending_model->update_attendance_regulation(base64_decode($this->uri->segment(3)),$add);
				if($update){
					$ar_d=$this->Pending_model->get_attendance_regulation(base64_decode($this->uri->segment(3)));
					$login_d=$this->Pending_model->emp_login_data($ar_d['emp_id'],$ar_d['a_date']);
					//echo $this->db->last_query();
					//echo '<pre>';print_r($ar_d);
					$time = isset($login_d['hours'])?$login_d['hours']:'00:00:00';
					$time2 = isset($ar_d['adding_time'])?$ar_d['adding_time']:'00:00:00';
					$secs = strtotime($time2)-strtotime("00:00:00");
					$hours = date("H:i",strtotime($time)+$secs);
						$ud=array(
							'hours'=>isset($hours)?$hours:'',
							'updated_time'=>date('Y-m-d H:i:s'),
							'to_time'=>isset($ar_d['to_time'])?$ar_d['to_time']:'',
							'from_time'=>isset($ar_d['from_time'])?$ar_d['from_time']:'',
							'reason'=>isset($ar_d['reason'])?$ar_d['reason']:'',
							'comment'=>isset($ar_d['comment'])?$ar_d['comment']:'',
							'diff_time'=>isset($ar_d['adding_time'])?$ar_d['adding_time']:'',
							'updated_by'=>isset($l_data['a_id'])?$l_data['a_id']:'',
						);
						//echo '<pre>';print_r($ud);exit;
						if(count($login_d)>0){
							$this->Pending_model->update_hrs($login_d['id'],$ud);
						}else{
							$a=array(
								'a_id'=>isset($ar_d['emp_id'])?$ar_d['emp_id']:'',
								'login_time'=>$ar_d['a_date'].' '.$ar_d['to_time'],
								'logout_time'=>$ar_d['a_date'].' '.$ar_d['from_time'],
								'hours'=>isset($ar_d['adding_time'])?$ar_d['adding_time']:'',
								'create_at'=>isset($ar_d['a_date'])?$ar_d['a_date']:'',
								'creatde_at'=>isset($ar_d['a_date'])?$ar_d['a_date']:'',
								'to_time'=>isset($ar_d['to_time'])?$ar_d['to_time']:'',
								'from_time'=>isset($ar_d['from_time'])?$ar_d['from_time']:'',
								'reason'=>isset($ar_d['reason'])?$ar_d['reason']:'',
								'comment'=>isset($ar_d['comment'])?$ar_d['comment']:'',
								'diff_time'=>isset($ar_d['adding_time'])?$ar_d['adding_time']:'',
							);
							//echo '<pre>';print_r($a);exit;
							$this->Pending_model->save_logintime($a);
							
						}
					$this->session->set_flashdata('success',"Request successfully accept");
					redirect('pending/attendance_regulation');
				}else{
					$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
					redirect('pending/attendance_regulation');
				}
			}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
	}	
	
	
	
	
	
	
}
