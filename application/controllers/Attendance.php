<?php
defined('BASEPATH') OR exit('No direct script access allowed');
@include_once( APPPATH . 'controllers/Sidebar.php');
class Attendance extends Sidebar {
		public function __construct()
	{
		parent::__construct();
		$this->load->model('Attendance_model');

	}
	public function index()
	{

	
	}
	public function upload()
	{	
		if($this->session->userdata('hms_details'))
		{
			$l_data=$this->session->userdata('hms_details');
			$this->load->view('attendance/upload');
			$this->load->view('admin/footer');
		}else{
			$this->session->set_flashdata('error','Please login to continue');
			redirect('admin');
		}
	}
	public function view()
	{
			
			$u_id=base64_decode($this->uri->segment(3));
			$data['u_data'] = $this->Attendance_model->get_employee_details($u_id);
			$data['login_d'] = $this->Attendance_model->get_login_details($u_id);
			//echo '<pre>';print_r($data);exit;
			$this->load->view('header1');
			$this->load->view('sidebar');
			$this->load->view('attendanceview',$data);
	
	}
	public  function update_login_hours(){
		$post=$this->input->post();
		$u_d=array('hours'=>$post['hrs'],'updated_time'=>date('Y-m-d H:i:s'));
		$up=$this->Attendance_model->update_login_time($post['lid'],$u_d);
		if(count($up)>0){
			$data['msg']=1;
			echo json_encode($data);exit;
			
		}
	}
	public function post()
	{
		$post=$this->input->post();
		
		//echo '<pre>';print_r($_FILES);exit;
		if((!empty($_FILES["ex_file"])) && ($_FILES['ex_file']['error'] == 0)) {

			$limitSize	= 1000000000; //(15 kb) - Maximum size of uploaded file, change it to any size you want
			$fileName	= basename($_FILES['ex_file']['name']);
			$fileSize	= $_FILES["ex_file"]["size"];
			$fileExt	= substr($fileName, strrpos($fileName, '.') + 1);
					/* subcategory data upload data*/
				 if(substr($_FILES['ex_file']['name'], 0, 9)=='timesheet'){
					if (($fileExt == "xlsx") && ($fileSize < $limitSize)) {
						include_once('simplexlsx.class.php');
						$getWorksheetName = array();
						$xlsx = new SimpleXLSX( $_FILES['ex_file']['tmp_name'] );
						$getWorksheetName = $xlsx->getWorksheetName();
						for($j=1;$j <= $xlsx->sheetsCount();$j++){
								$cnt=$xlsx->sheetsCount()-1;
								$arry=$xlsx->rows($j);
								unset($arry[0]);
								foreach($arry as $li){
									$emp_id=$this->Attendance_model->get_emp_ids($li['0']);
									$datetime1 = new DateTime($li[1]);
									$datetime2 = new DateTime($li[2]);
									$interval = $datetime1->diff($datetime2);
									$diff_in_hrs =$interval->format('%h');
									$diff_in_mins =$interval->format('%i');
									$add=array(
										'a_id'=>isset($emp_id['a_id'])?$emp_id['a_id']:'',
										'code'=>isset($li[0])?$li[0]:'',
										'login_time'=>isset($li[1])?$li[1]:'',
										'logout_time'=>isset($li[2])?$li[2]:'',
										'hours'=>$diff_in_hrs.':'.$diff_in_mins,
										'create_at'=>date("Y-m-d", strtotime($li[1])),
										'creatde_at'=>date('Y-m-d'),
									);
									$checking=$this->Attendance_model->check_attendece($emp_id['a_id'],$li[1]);
									if(count($checking)>0){
										$save=$this->Attendance_model->update_login_time($checking['id'],$add);
									}else{
										$save=$this->Attendance_model->save_timesheet($add);
									}
									
									//echo "<pre>";print_r($add);exit;
								}
								
																
						}
						if(count($save)>0){
							$this->session->set_flashdata('success',"Attendance Report successfully completed");
							redirect('attendance/upload');	
						}else{
							$this->session->set_flashdata('error',"technical problem will occurred. Please try again.");
							redirect('attendance/upload');	
						}
					}
				 }
		}
	
	}
	
	
	
	
}
