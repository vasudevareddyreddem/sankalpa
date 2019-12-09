<?php
defined('BASEPATH') OR exit('No direct script access allowed');
@include_once( APPPATH . 'controllers/Sidebar.php');

class Employee extends sidebar {
	public function __construct() 
	{
		parent::__construct();	
	
		$this->load->model('Employee_model');
		$this->load->model('Pending_model');
	}
	public function index()
	{	
		if($this->session->userdata('hms_details'))
			{
				$l_data=$this->session->userdata('hms_details');
				if($l_data['role_id']==1 || $l_data['role_id']==3){
					$data['e_list']=$this->Employee_model->emp_list();
					//echo '<pre>';print_r($data);exit;
					$this->load->view('employee/list',$data);
				}else if($l_data['role_id']==4){
					$dep_list=$this->Admin_model->manager_departments($l_data['a_id']);
					if(isset($dep_list) && count($dep_list)>0){
						foreach($dep_list as $li){
							$dli[]=$li['d_id'];
						}
					}else{
						$dli[]=array();
					}
					$data['e_list']=$this->Employee_model->department_emp_list($dli);
					//echo '<pre>';print_r($data);exit;
					$this->load->view('employee/manegeremplist',$data);
					
				}else{
					$data['e_list']=$this->Employee_model->emp_list();
					$this->load->view('employee/account_emp_list',$data);
				}
				
				$this->load->view('admin/footer');
			}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
	}
	public function calendar()
	{	
		if($this->session->userdata('hms_details'))
			{
				
				
				$l_data=$this->session->userdata('hms_details');
				$emp_data=$this->Employee_model->get_employee_data($l_data['a_id']);
				$this->load->model('Leaves_model');
				$l_days=$this->Leaves_model->get_leaves_count();
				$Date1 = $emp_data['doj']; 
				$date = strtotime('+1 months');   
				$Date2=date('Y-m-d', $date);
				$array = array(); 
				$Variable1 = strtotime($Date1); 
				$Variable2 = strtotime($Date2); 
				for ($currentDate = $Variable1; $currentDate <= $Variable2;  
					 $currentDate += (86400)) {                                      
					$Store = date('Y-m-d', $currentDate);
					$array[] = $Store; 
				}
				$n=0;foreach($array as $ali){
					$em_d=$this->Employee_model->get_emp_data($l_data['a_id'],$ali);
					$leave=$this->Employee_model->get_emp_leave($l_data['a_id'],$ali);
					if(isset($leave['l_type']) && $leave['l_type']!=''){
						$l_leave='1';
					}else{
						$l_leave='';
					}
					//echo '<pre>';print_r($leave);
					//echo $this->db->last_query();
					if($em_d['logout_time']!='' && $em_d['logout_time']!='0000-00-00 00:00:00'){
						$ctime=$em_d['logout_time'];
						
					}else{
						$ctime=date('Y-m-d H:i:s');
					}
					if($em_d['login_time']!='' && $em_d['login_time']!='0000-00-00 00:00:00'){
						$etime=$em_d['login_time'];
					}else{
						$etime=date('Y-m-d H:i:s');
					}
					$datetime1 = new DateTime($etime);
					$datetime2 = new DateTime($ctime);
					$interval = $datetime1->diff($datetime2);
					$diff_in_hrs =$interval->format('%h');
					$diff_in_mins =$interval->format('%i');
					if($l_leave==1){
						$hrs='leave';
					}else{
						if($em_d['hours']==''){
							$hrs=$diff_in_hrs.':'.$diff_in_mins;
							$tt=explode(":",$hrs);
						}else{
							$hrs=$em_d['hours'];
							$tt=explode(":",$hrs);
						}
					}
					if($tt[0]>=6 && $tt[1]>=30 || $tt[0]>7  && $hrs!='leave'){
						$col="green";
					}else if($tt[0]>=5 && $tt[0]<=6  && $hrs!='leave'){
						$col="yellow";
					}else if($tt[0]<5 && $ali <= date('Y-m-d')  && $hrs!='leave'){
						$col="red";
					}else if($l_leave==1){
						$col="#3f399d";
					}else{
						$col="#fff";
					}
					if($ali <= date('Y-m-d')){
						$sdate = date('Y M D d', $time = strtotime($ali) );
						if( strpos($sdate, 'Sat') && $ali <= date('Y-m-d'))
						{
							if($l_days['sat_day']==0 && $em_d['hours']==''){
								$col="#FFB6C1";
							}else{
								$col=$col;
							}
							$datas[$ali]['date']=$ali;
							$datas[$ali]['hrs']=$hrs;
							$datas[$ali]['intime']='';
							$datas[$ali]['outime']='';
							$datas[$ali]['color']=$col;
							$datas[$ali]['leve']=isset($l_leave)?$l_leave:'';
							$datas[$ali]['leve_msg']=isset($leave['message'])?$leave['message']:'';
							if($em_d['diff_time']!=''){
								$datas[$ali]['res_text']='Attendance regulation time approved - '.$em_d['diff_time'].' Hours <br> <strong>Reason :</strong> '.$em_d['reason'];	
							}else{
								$datas[$ali]['res_text']='';	
							}
							$datas[$ali]['diff_time']=isset($em_d['diff_time'])?$em_d['diff_time']:'';
						}else if(strpos($sdate, 'Sun') && $ali <= date('Y-m-d'))
						{
							$col="#FFB6C1";
							$datas[$ali]['date']=$ali;
							$datas[$ali]['hrs']='';
							$datas[$ali]['intime']='';
							$datas[$ali]['outime']='';
							$datas[$ali]['color']=$col;
							$datas[$ali]['leve']=isset($l_leave)?$l_leave:'';
							$datas[$ali]['leve_msg']=isset($leave['message'])?$leave['message']:'';
							if($em_d['diff_time']!=''){
								$datas[$ali]['res_text']='Attendance regulation time approved - '.$em_d['diff_time'].' Hours <br> <strong>Reason :</strong> '.$em_d['reason'];	
							}else{
								$datas[$ali]['res_text']='';	
							}
							$datas[$ali]['diff_time']=isset($em_d['diff_time'])?$em_d['diff_time']:'';
						}else if($ali <= date('Y-m-d')){
							$datas[$ali]['date']=$ali;
							$datas[$ali]['hrs']=$hrs;
							if($hrs!='leave'){
								$datas[$ali]['intime']=$etime;
								$datas[$ali]['outime']=$ctime;
							}else{
								$datas[$ali]['intime']='';
								$datas[$ali]['outime']='';
							}							
							$datas[$ali]['color']=$col;
							$datas[$ali]['leve']=isset($l_leave)?$l_leave:'';
							$datas[$ali]['leve_msg']=isset($leave['message'])?$leave['message']:'';
							if($em_d['diff_time']!=''){
								$datas[$ali]['res_text']='Attendance regulation time approved - '.$em_d['diff_time'].' Hours <br> <strong>Reason :</strong> '.$em_d['reason'];	
							}else{
								$datas[$ali]['res_text']='';	
							}
							
							$datas[$ali]['diff_time']=isset($em_d['diff_time'])?$em_d['diff_time']:'';
						}
					}else{
							$datas[$ali]['date']=$ali;
							$datas[$ali]['hrs']=$hrs;
							$datas[$ali]['intime']='';
							$datas[$ali]['outime']='';
							$datas[$ali]['color']=$col;
							$datas[$ali]['leve']=isset($l_leave)?$l_leave:'';
							$datas[$ali]['leve_msg']=isset($leave['message'])?$leave['message']:'';
							$datas[$ali]['res_text']='';
							$datas[$ali]['diff_time']='';
					}
					
				$n++;}
				$data['log_data']=$datas;
				//echo '<pre>';print_r($data);exit;
				$this->load->view('employee/view',$data);
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
				$post=$this->input->post();
				$data['a_date']=$post['a_t_url'];
				$this->load->view('employee/attendance_regulation',$data);
				$this->load->view('admin/footer');
			}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
	}
	public function attendance_regulationpost()
	{	
		if($this->session->userdata('hms_details'))
			{
				$l_data=$this->session->userdata('hms_details');
				$post=$this->input->post();
				
				$date1 = new DateTime($post['to_time']);
				$date2 = new DateTime($post['from_time']);
				$diff = $date2->diff($date1);
				$add=array(
				'emp_id'=>isset($l_data['a_id'])?$l_data['a_id']:'',
				'a_date'=>isset($post['a_date'])?$post['a_date']:'',
				'to_time'=>isset($post['to_time'])?$post['to_time']:'',
				'from_time'=>isset($post['from_time'])?$post['from_time']:'',
				'adding_time'=>$diff->format('%h:%i'),
				'reason'=>isset($post['reason'])?$post['reason']:'',
				'created_at'=>date('Y-m-d H:i:s'),
				'created_by'=>isset($l_data['a_id'])?$l_data['a_id']:'',
				);
				$save=$this->Employee_model->save_attendance_regulation($add);
				if($save){
					$this->session->set_flashdata('success',"Request successfully sent");
					redirect('employee/calendar');
				}else{
					$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
					redirect('employee/calendar');
				}
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
				$data['dep_list']=$this->Employee_model->get_dep_list();
				$data['branch_list']=$this->Employee_model->get_branch_list();
				//echo '<pre>';print_r($data);exit;
				$this->load->view('employee/add',$data);
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
				$a_id=base64_decode($this->uri->segment(3));
				if($a_id==''){
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('employee');
				}
				$data['u_d']=$this->Admin_model->get_emp_full_details($a_id);
				$this->load->view('employee/view',$data);
				$this->load->view('admin/footer');
			}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
	}public function details()
	{	
		if($this->session->userdata('hms_details'))
			{
				$a_id=base64_decode($this->uri->segment(3));
				if($a_id==''){
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('employee');
				}
				$data['u_d']=$this->Admin_model->get_emp_full_details($a_id);
				$this->load->view('employee/profileview',$data);
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
			$a_id=base64_decode($this->uri->segment(3));
			if($a_id==''){
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('employee');
			}
			$data['dep_list']=$this->Employee_model->get_dep_list();
			$data['branch_list']=$this->Employee_model->get_branch_list();
			$data['emp_d']=$this->Employee_model->emp_details($a_id);
			//echo '<pre>';print_r($data);exit;
			$this->load->view('employee/edit',$data);
			$this->load->view('admin/footer');
		}else{
			$this->session->set_flashdata('error','Please login to continue');
			redirect('admin');
		}
	}
	public function get_brach_code()
	{
		if($this->session->userdata('hms_details'))
		{
			$post=$this->input->post();
			$branch_code=$this->Employee_model->get_brnach_code($post['bid']);
			$emp_code=$this->Employee_model->get_employee_num();
			if(count($branch_code)>0){
				$data['msg']=1;
				$data['code']=$branch_code['code'].($emp_code['a_id']+1);
				echo json_encode($data);exit;				
			}
		}else{
			$this->session->set_flashdata('error','Please login to continue');
			redirect('admin');
		}
	}
	public function get_edit_brach_code()
	{
		if($this->session->userdata('hms_details'))
		{
			$post=$this->input->post();
			$branch_code=$this->Employee_model->get_brnach_code($post['bid']);
			if(count($branch_code)>0){
				$data['msg']=1;
				$data['code']=$branch_code['code'].($post['aid']);
				echo json_encode($data);exit;				
			}
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
					if(isset($_FILES['profile_pic']['name']) && $_FILES['profile_pic']['name']!=''){
					$temp = explode(".", $_FILES["profile_pic"]["name"]);
					$profile_pic = round(microtime(true)) . '.' . end($temp);
					move_uploaded_file($_FILES['profile_pic']['tmp_name'], "assets/profile_pic/" . $profile_pic);
					}
					if(isset($_FILES['aadhar_pic']['name']) && $_FILES['aadhar_pic']['name']!=''){
					$temp = explode(".", $_FILES["aadhar_pic"]["name"]);
					$aadhar_pic = round(microtime(true)) . '.' . end($temp);
					move_uploaded_file($_FILES['aadhar_pic']['tmp_name'], "assets/document/" . $aadhar_pic);
					}
					if(isset($_FILES['pan_pic']['name']) && $_FILES['pan_pic']['name']!=''){
						$temp = explode(".", $_FILES["pan_pic"]["name"]);
						$pan_pic = round(microtime(true)) . '.' . end($temp);
						move_uploaded_file($_FILES['pan_pic']['tmp_name'], "assets/document/" . $pan_pic);
					}
					if(isset($_FILES['kye']['name']) && $_FILES['kye']['name']!=''){
						$temp = explode(".", $_FILES["kye"]["name"]);
						$kye = round(microtime(true)) . '.' . end($temp);
						move_uploaded_file($_FILES['kye']['tmp_name'], "assets/document/" . $kye);
					}
					$add=array(
					'role_id'=>2,
					'name'=>isset($post['name'])?$post['name']:'',
					'dep_id'=>isset($post['dep_id'])?$post['dep_id']:'',
					'designation'=>isset($post['designation'])?$post['designation']:'',
					'email'=>isset($post['off_mail'])?$post['off_mail']:'',
					'per_mail'=>isset($post['per_mail'])?$post['per_mail']:'',
					'mobile'=>isset($post['mobile'])?$post['mobile']:'',
					'emergency_contact_number'=>isset($post['emergency_contact_number'])?$post['emergency_contact_number']:'',
					'type_of_emp'=>isset($post['type_of_emp'])?$post['type_of_emp']:'',
					'months'=>isset($post['months'])?$post['months']:'',
					'notice_period'=>isset($post['notice_period'])?$post['notice_period']:'',
					'n_p_months'=>isset($post['n_p_months'])?$post['n_p_months']:'',
					'boold_group'=>isset($post['boold_group'])?$post['boold_group']:'',
					'marital_status'=>isset($post['marital_status'])?$post['marital_status']:'',
					'spouse'=>isset($post['spouse'])?$post['spouse']:'',
					'children_one'=>isset($post['children_one'])?$post['children_one']:'',
					'children_two'=>isset($post['children_two'])?$post['children_two']:'',
					'children_three'=>isset($post['children_three'])?$post['children_three']:'',
					'pwd'=>isset($post['mobile'])?md5($post['mobile']):'',
					'org_pwd'=>isset($post['mobile'])?$post['mobile']:'',
					'off_mail'=>isset($post['off_mail'])?$post['off_mail']:'',
					'branch_id'=>isset($post['branch_id'])?$post['branch_id']:'',
					'code'=>isset($post['code'])?$post['code']:'',
					'doj'=>isset($post['doj'])?$post['doj']:'',
					'father_name'=>isset($post['father_name'])?$post['father_name']:'',
					'mother_name'=>isset($post['mother_name'])?$post['mother_name']:'',
					'marriage_date'=>isset($post['marriage_date'])?$post['marriage_date']:'',
					'spouse_dob'=>isset($post['spouse_dob'])?$post['spouse_dob']:'',
					'children_one_dob'=>isset($post['children_one_dob'])?$post['children_one_dob']:'',
					'children_two_dob'=>isset($post['children_two_dob'])?$post['children_two_dob']:'',
					'children_three_dob'=>isset($post['children_three_dob'])?$post['children_three_dob']:'',
					'dob'=>isset($post['dob'])?$post['dob']:'',
					'gender'=>isset($post['gender'])?$post['gender']:'',
					'aadhar_num'=>isset($post['aadhar_num'])?$post['aadhar_num']:'',
					'pan_num'=>isset($post['pan_num'])?$post['pan_num']:'',
					'per_add'=>isset($post['per_add'])?$post['per_add']:'',
					'temp_add'=>isset($post['temp_add'])?$post['temp_add']:'',
					'profile_pic'=>isset($profile_pic)?$profile_pic:'',
					'aadhar_pic'=>isset($aadhar_pic)?$aadhar_pic:'',
					'pan_pic'=>isset($pan_pic)?$pan_pic:'',
					'kye'=>isset($kye)?$kye:'',
					'basicsalary'=>isset($post['basicsalary'])?$post['basicsalary']:'',
					'hra'=>isset($post['hra'])?$post['hra']:'',
					'specialallowance'=>isset($post['specialallowance'])?$post['specialallowance']:'',
					'conveyance'=>isset($post['conveyance'])?$post['conveyance']:'',
					'medicalreimbursement'=>isset($post['medicalreimbursement'])?$post['medicalreimbursement']:'',
					'pfnumber'=>isset($post['pfnumber'])?$post['pfnumber']:'',
					'employee_pfamount'=>isset($post['employee_pfamount'])?$post['employee_pfamount']:'',
					'employer_pfamount'=>isset($post['employer_pfamount'])?$post['employer_pfamount']:'',
					'pfamount'=>isset($post['pfamount'])?$post['pfamount']:'',
					'pt'=>isset($post['pt'])?$post['pt']:'',
					'employee_esi'=>isset($post['employee_esi'])?$post['employee_esi']:'',
					'employee_contribution_esi'=>isset($post['employee_contribution_esi'])?$post['employee_contribution_esi']:'',
					'employer_contribution_esi'=>isset($post['employer_contribution_esi'])?$post['employer_contribution_esi']:'',
					'others'=>isset($post['others'])?$post['others']:'',
					'bankname'=>isset($post['bankname'])?$post['bankname']:'',
					'ifsc'=>isset($post['ifsc'])?$post['ifsc']:'',
					'bankaccountnumber'=>isset($post['bankaccountnumber'])?$post['bankaccountnumber']:'',
					'advance'=>isset($post['advance'])?$post['advance']:'',
					'employee_buyout'=>isset($post['employee_buyout'])?$post['employee_buyout']:'',
					'relocation_allowance'=>isset($post['relocation_allowance'])?$post['relocation_allowance']:'',
					'salary'=>isset($post['netsalary'])?$post['netsalary']:'',
					'netsalary'=>isset($post['netsalary'])?$post['netsalary']:'',
					'gross_salary'=>isset($post['gross_salary'])?$post['gross_salary']:'',
					'created_at'=>date('Y-M-d H:i:s'),
					'created_by'=>isset($l_data['a_id'])?$l_data['a_id']:'',
					);
				$save=$this->Employee_model->add_emp_save($add);
				if(count($save)>0){
					/*email */
						$data['details']=$post;
						$this->load->library('email');
						$this->email->set_newline("\r\n");
						$this->email->set_mailtype("html");
						$this->email->from($post['p_email']);
						$this->email->to($userdetails['emp_username']);
						$this->email->subject('Login details - Request');
						$body = $this->load->view('email/register.php',$data,true);
						$this->email->message($body);
						//echo $body;exit;
						$this->email->send();
					/*email */
					$this->session->set_flashdata('success',"Employee added successfully");
					redirect('employee');
				}else{
					$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
					redirect('employee/add');
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
					$d=$this->Employee_model->emp_details($post['a_id']);
					if(isset($_FILES['profile_pic']['name']) && $_FILES['profile_pic']['name']!=''){
						unlink('assets/profile_pic/'.$d['profile_pic']);
						$temp = explode(".", $_FILES["profile_pic"]["name"]);
						$profile_pic = round(microtime(true)) . '.' . end($temp);
						move_uploaded_file($_FILES['profile_pic']['tmp_name'], "assets/profile_pic/" . $profile_pic);
					}else{
						$profile_pic=$d['profile_pic'];
					}
					
					if(isset($_FILES['aadhar_pic']['name']) && $_FILES['aadhar_pic']['name']!=''){
						unlink('assets/document/'.$d['aadhar_pic']);
					$temp = explode(".", $_FILES["aadhar_pic"]["name"]);
					$aadhar_pic = round(microtime(true)) . '.' . end($temp);
					move_uploaded_file($_FILES['aadhar_pic']['tmp_name'], "assets/document/" . $aadhar_pic);
					}else{
					$aadhar_pic=$d['aadhar_pic'];
					}
					if(isset($_FILES['pan_pic']['name']) && $_FILES['pan_pic']['name']!=''){
						unlink('assets/document/'.$d['pan_pic']);
						$temp = explode(".", $_FILES["pan_pic"]["name"]);
						$pan_pic = round(microtime(true)) . '.' . end($temp);
						move_uploaded_file($_FILES['pan_pic']['tmp_name'], "assets/document/" . $pan_pic);
					}else{
					$pan_pic=$d['pan_pic'];
					}
					
					if(isset($_FILES['kye']['name']) && $_FILES['kye']['name']!=''){
						unlink('assets/document/'.$d['kye']);
						$temp = explode(".", $_FILES["kye"]["name"]);
						$kye = round(microtime(true)) . '.' . end($temp);
						move_uploaded_file($_FILES['kye']['tmp_name'], "assets/document/" . $kye);
					}else{
						$kye=$d['kye'];
					}
					$u_data=array(
					'name'=>isset($post['name'])?$post['name']:'',
					'designation'=>isset($post['designation'])?$post['designation']:'',
					'dep_id'=>isset($post['dep_id'])?$post['dep_id']:'',
					'email'=>isset($post['off_mail'])?$post['off_mail']:'',
					'per_mail'=>isset($post['per_mail'])?$post['per_mail']:'',
					'mobile'=>isset($post['mobile'])?$post['mobile']:'',
					'emergency_contact_number'=>isset($post['emergency_contact_number'])?$post['emergency_contact_number']:'',
					'type_of_emp'=>isset($post['type_of_emp'])?$post['type_of_emp']:'',
					'months'=>isset($post['months'])?$post['months']:'',
					'notice_period'=>isset($post['notice_period'])?$post['notice_period']:'',
					'n_p_months'=>isset($post['n_p_months'])?$post['n_p_months']:'',
					'boold_group'=>isset($post['boold_group'])?$post['boold_group']:'',
					'marital_status'=>isset($post['marital_status'])?$post['marital_status']:'',
					'spouse'=>isset($post['spouse'])?$post['spouse']:'',
					'children_one'=>isset($post['children_one'])?$post['children_one']:'',
					'children_two'=>isset($post['children_two'])?$post['children_two']:'',
					'children_three'=>isset($post['children_three'])?$post['children_three']:'',
					'marriage_date'=>isset($post['marriage_date'])?$post['marriage_date']:'',
					'spouse_dob'=>isset($post['spouse_dob'])?$post['spouse_dob']:'',
					'children_one_dob'=>isset($post['children_one_dob'])?$post['children_one_dob']:'',
					'children_two_dob'=>isset($post['children_two_dob'])?$post['children_two_dob']:'',
					'children_three_dob'=>isset($post['children_three_dob'])?$post['children_three_dob']:'',
					'off_mail'=>isset($post['off_mail'])?$post['off_mail']:'',
					'branch_id'=>isset($post['branch_id'])?$post['branch_id']:'',
					'code'=>isset($post['code'])?$post['code']:'',
					'doj'=>isset($post['doj'])?$post['doj']:'',
					'father_name'=>isset($post['father_name'])?$post['father_name']:'',
					'mother_name'=>isset($post['mother_name'])?$post['mother_name']:'',
					'dob'=>isset($post['dob'])?$post['dob']:'',
					'gender'=>isset($post['gender'])?$post['gender']:'',
					'aadhar_num'=>isset($post['aadhar_num'])?$post['aadhar_num']:'',
					'pan_num'=>isset($post['pan_num'])?$post['pan_num']:'',
					'per_add'=>isset($post['per_add'])?$post['per_add']:'',
					'temp_add'=>isset($post['temp_add'])?$post['temp_add']:'',
					'profile_pic'=>isset($profile_pic)?$profile_pic:'',
					'aadhar_pic'=>isset($aadhar_pic)?$aadhar_pic:'',
					'pan_pic'=>isset($pan_pic)?$pan_pic:'',
					'kye'=>isset($kye)?$kye:'',
					'basicsalary'=>isset($post['basicsalary'])?$post['basicsalary']:'',
					'hra'=>isset($post['hra'])?$post['hra']:'',
					'specialallowance'=>isset($post['specialallowance'])?$post['specialallowance']:'',
					'conveyance'=>isset($post['conveyance'])?$post['conveyance']:'',
					'medicalreimbursement'=>isset($post['medicalreimbursement'])?$post['medicalreimbursement']:'',
					'pfnumber'=>isset($post['pfnumber'])?$post['pfnumber']:'',
					'employee_pfamount'=>isset($post['employee_pfamount'])?$post['employee_pfamount']:'',
					'employer_pfamount'=>isset($post['employer_pfamount'])?$post['employer_pfamount']:'',
					'pfamount'=>isset($post['pfamount'])?$post['pfamount']:'',
					'pt'=>isset($post['pt'])?$post['pt']:'',
					'employee_esi'=>isset($post['employee_esi'])?$post['employee_esi']:'',
					'employee_contribution_esi'=>isset($post['employee_contribution_esi'])?$post['employee_contribution_esi']:'',
					'employer_contribution_esi'=>isset($post['employer_contribution_esi'])?$post['employer_contribution_esi']:'',
					'esi'=>isset($post['esi'])?$post['esi']:'',
					'others'=>isset($post['others'])?$post['others']:'',
					'bankname'=>isset($post['bankname'])?$post['bankname']:'',
					'ifsc'=>isset($post['ifsc'])?$post['ifsc']:'',
					'bankaccountnumber'=>isset($post['bankaccountnumber'])?$post['bankaccountnumber']:'',
					'advance'=>isset($post['advance'])?$post['advance']:'',
					'employee_buyout'=>isset($post['employee_buyout'])?$post['employee_buyout']:'',
					'relocation_allowance'=>isset($post['relocation_allowance'])?$post['relocation_allowance']:'',
					'salary'=>isset($post['netsalary'])?$post['netsalary']:'',
					'netsalary'=>isset($post['netsalary'])?$post['netsalary']:'',
					'gross_salary'=>isset($post['gross_salary'])?$post['gross_salary']:'',
					'updated_at'=>date('Y-M-d H:i:s'),
			);
			$update=$this->Employee_model->emp_update($post['a_id'],$u_data);
			if(count($update)>0){
				$this->session->set_flashdata('success',"Employee updated successfully");
				redirect('employee');
			}else{
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('employee/edit/'.base64_encode($post['a_id']));
			}
		}else{
			$this->session->set_flashdata('error','Please login to continue');
			redirect('admin');
		}			
	}
	public  function empeditpost(){
	if($this->session->userdata('hms_details'))
		{
					$post=$this->input->post();
					//echo '<pre>';print_r($post);exit;
					$d=$this->Employee_model->emp_details($post['a_id']);
					if(isset($_FILES['profile_pic']['name']) && $_FILES['profile_pic']['name']!=''){
						unlink('assets/profile_pic/'.$d['profile_pic']);
						$temp = explode(".", $_FILES["profile_pic"]["name"]);
						$profile_pic = round(microtime(true)) . '.' . end($temp);
						move_uploaded_file($_FILES['profile_pic']['tmp_name'], "assets/profile_pic/" . $profile_pic);
					}else{
						$profile_pic=$d['profile_pic'];
					}
					
					if(isset($_FILES['aadhar_pic']['name']) && $_FILES['aadhar_pic']['name']!=''){
						unlink('assets/document/'.$d['aadhar_pic']);
					$temp = explode(".", $_FILES["aadhar_pic"]["name"]);
					$aadhar_pic = round(microtime(true)) . '.' . end($temp);
					move_uploaded_file($_FILES['aadhar_pic']['tmp_name'], "assets/document/" . $aadhar_pic);
					}else{
					$aadhar_pic=$d['aadhar_pic'];
					}
					if(isset($_FILES['pan_pic']['name']) && $_FILES['pan_pic']['name']!=''){
						unlink('assets/document/'.$d['pan_pic']);
						$temp = explode(".", $_FILES["pan_pic"]["name"]);
						$pan_pic = round(microtime(true)) . '.' . end($temp);
						move_uploaded_file($_FILES['pan_pic']['tmp_name'], "assets/document/" . $pan_pic);
					}else{
					$pan_pic=$d['pan_pic'];
					}
					
					if(isset($_FILES['kye']['name']) && $_FILES['kye']['name']!=''){
						unlink('assets/document/'.$d['kye']);
						$temp = explode(".", $_FILES["kye"]["name"]);
						$kye = round(microtime(true)) . '.' . end($temp);
						move_uploaded_file($_FILES['kye']['tmp_name'], "assets/document/" . $kye);
					}else{
						$kye=$d['kye'];
					}
					$u_data=array(
					'name'=>isset($post['name'])?$post['name']:'',
					'dep_id'=>isset($post['dep_id'])?$post['dep_id']:'',
					'email'=>isset($post['off_mail'])?$post['off_mail']:'',
					'per_mail'=>isset($post['per_mail'])?$post['per_mail']:'',
					'mobile'=>isset($post['mobile'])?$post['mobile']:'',
					'off_mail'=>isset($post['off_mail'])?$post['off_mail']:'',
					'branch_id'=>isset($post['branch_id'])?$post['branch_id']:'',
					'code'=>isset($post['code'])?$post['code']:'',
					'doj'=>isset($post['doj'])?$post['doj']:'',
					'emergency_contact_number'=>isset($post['emergency_contact_number'])?$post['emergency_contact_number']:'',
					'type_of_emp'=>isset($post['type_of_emp'])?$post['type_of_emp']:'',
					'months'=>isset($post['months'])?$post['months']:'',
					'notice_period'=>isset($post['notice_period'])?$post['notice_period']:'',
					'n_p_months'=>isset($post['n_p_months'])?$post['n_p_months']:'',
					'boold_group'=>isset($post['boold_group'])?$post['boold_group']:'',
					'marital_status'=>isset($post['marital_status'])?$post['marital_status']:'',
					'spouse'=>isset($post['spouse'])?$post['spouse']:'',
					'children_one'=>isset($post['children_one'])?$post['children_one']:'',
					'children_two'=>isset($post['children_two'])?$post['children_two']:'',
					'children_three'=>isset($post['children_three'])?$post['children_three']:'',
					'marriage_date'=>isset($post['marriage_date'])?$post['marriage_date']:'',
					'spouse_dob'=>isset($post['spouse_dob'])?$post['spouse_dob']:'',
					'children_one_dob'=>isset($post['children_one_dob'])?$post['children_one_dob']:'',
					'children_two_dob'=>isset($post['children_two_dob'])?$post['children_two_dob']:'',
					'children_three_dob'=>isset($post['children_three_dob'])?$post['children_three_dob']:'',
					'father_name'=>isset($post['father_name'])?$post['father_name']:'',
					'mother_name'=>isset($post['mother_name'])?$post['mother_name']:'',
					'dob'=>isset($post['dob'])?$post['dob']:'',
					'gender'=>isset($post['gender'])?$post['gender']:'',
					'aadhar_num'=>isset($post['aadhar_num'])?$post['aadhar_num']:'',
					'pan_num'=>isset($post['pan_num'])?$post['pan_num']:'',
					'per_add'=>isset($post['per_add'])?$post['per_add']:'',
					'temp_add'=>isset($post['temp_add'])?$post['temp_add']:'',
					'profile_pic'=>isset($profile_pic)?$profile_pic:'',
					'aadhar_pic'=>isset($aadhar_pic)?$aadhar_pic:'',
					'pan_pic'=>isset($pan_pic)?$pan_pic:'',
					'kye'=>isset($kye)?$kye:'',
					'basicsalary'=>isset($post['basicsalary'])?$post['basicsalary']:'',
					'hra'=>isset($post['hra'])?$post['hra']:'',
					'specialallowance'=>isset($post['specialallowance'])?$post['specialallowance']:'',
					'conveyance'=>isset($post['conveyance'])?$post['conveyance']:'',
					'medicalreimbursement'=>isset($post['medicalreimbursement'])?$post['medicalreimbursement']:'',
					'pfnumber'=>isset($post['pfnumber'])?$post['pfnumber']:'',
					'employee_pfamount'=>isset($post['employee_pfamount'])?$post['employee_pfamount']:'',
					'employer_pfamount'=>isset($post['employer_pfamount'])?$post['employer_pfamount']:'',
					'pfamount'=>isset($post['pfamount'])?$post['pfamount']:'',
					'pt'=>isset($post['pt'])?$post['pt']:'',
					'employee_esi'=>isset($post['employee_esi'])?$post['employee_esi']:'',
					'employee_contribution_esi'=>isset($post['employee_contribution_esi'])?$post['employee_contribution_esi']:'',
					'employer_contribution_esi'=>isset($post['employer_contribution_esi'])?$post['employer_contribution_esi']:'',
					'esi'=>isset($post['esi'])?$post['esi']:'',
					'others'=>isset($post['others'])?$post['others']:'',
					'bankname'=>isset($post['bankname'])?$post['bankname']:'',
					'ifsc'=>isset($post['ifsc'])?$post['ifsc']:'',
					'bankaccountnumber'=>isset($post['bankaccountnumber'])?$post['bankaccountnumber']:'',
					'advance'=>isset($post['advance'])?$post['advance']:'',
					'employee_buyout'=>isset($post['employee_buyout'])?$post['employee_buyout']:'',
					'relocation_allowance'=>isset($post['relocation_allowance'])?$post['relocation_allowance']:'',
					'salary'=>isset($post['netsalary'])?$post['netsalary']:'',
					'netsalary'=>isset($post['netsalary'])?$post['netsalary']:'',
					'gross_salary'=>isset($post['gross_salary'])?$post['gross_salary']:'',
					'updated_at'=>date('Y-M-d H:i:s'),
			);
			$update=$this->Employee_model->emp_update($post['a_id'],$u_data);
			if(count($update)>0){
				$this->session->set_flashdata('success',"Details updated successfully");
				redirect('profile/view');
			}else{
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('profile/edit/');
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
			$update=$this->Employee_model->emp_update($d_id,$u_data);
			if(count($update)>0){
				if($st=1){
					$this->session->set_flashdata('success',"Employee activated successfully");
				}else{
					$this->session->set_flashdata('success',"Employee deactivated successfully");
				}
				redirect('employee');
			}else{
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('employee');
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
			$update=$this->Employee_model->emp_update($d_id,$u_data);
			if(count($update)>0){
				$this->session->set_flashdata('success',"Employee deleted successfully");
				redirect('employee');
			}else{
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('employee');
			}
		}else{
			$this->session->set_flashdata('error','Please login to continue');
			redirect('admin');
		}
	}
	public function getpayslips(){
		if($this->session->userdata('hms_details'))
		{
			$post=$this->input->post();
			$ids=explode('_',$post['emp_id']);
			$getpayslip= $this->Employee_model->get_payslip_data($ids[0],$ids[1],$post['years']);
			//echo '<pre>';print_r($getpayslip);exit;
			if(count($getpayslip) > 0)
			{
				$data['msg']=1;
				$data=$getpayslip;
				echo json_encode($data);exit;
			}else{
				$data['msg']=0;
				echo json_encode($data);exit;
			}
		}else{
			$this->session->set_flashdata('error','Please login to continue');
			redirect('admin');
		}

	}
	
	public  function presentabsent(){
		if($this->session->userdata('hms_details'))
		{
			
			$l_d=$this->session->userdata('hms_details');
			if($l_d['role_id']==1  || $l_d['role_id']==3){
				$data['present_emp']=$this->Employee_model->get_present_empLoist();
			}else if($l_d['role_id']==5){
				$data['present_emp']=$this->Employee_model->get_present_empLoist();
			}else{
				$dep_list=$this->Admin_model->manager_departments($l_d['a_id']);
					if(isset($dep_list) && count($dep_list)>0){
						foreach($dep_list as $li){
							$dli[]=$li['d_id'];
						}
					}else{
						$dli[]=array();
					}
				$this->load->model('Employee_model');
				$data['present_emp']=$this->Employee_model->login_emp_department_emp_list($dli);
			}
			$this->load->view('employee/presentabsent',$data);
			

			$this->load->view('admin/footer');
			//echo '<pre>';print_r($data);exit;
			
		}else{
			$this->session->set_flashdata('error','Please login to continue');
			redirect('admin');
		}
	}
	
}
