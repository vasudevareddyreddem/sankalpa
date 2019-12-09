<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Employee_model extends CI_Model 

{
	function __construct() 
	{
		parent::__construct();
		$this->load->database("default");
	}
	/* employee details */
	public function add_emp_save($d){
		$this->db->insert('admin',$d);
        return $this->db->insert_id();
	}
	public function emp_update($id,$d){
			$this->db->where('a_id',$id);
		return $this->db->update('admin',$d);
	}
	public  function emp_details($id){
		$this->db->select('*')->from('admin');
		$this->db->where('a_id',$id);
		return $this->db->get()->row_array();
	}
	public  function emp_list(){
		$this->db->select('a.a_id,a.name,d.name as departname,b.name as branchname,a.email,a.mobile,a.code,a.off_mail,a.branch_id,a.doj,a.status,a.created_at')->from('admin as a');
		$this->db->join('department as d','d.d_id=a.dep_id','left');
		$this->db->join('branches as b','b.b_id=a.branch_id','left');
		$this->db->where('a.status !=',2);
		$this->db->where('a.role_id',2);
		return $this->db->get()->result_array();	
	}
	public  function get_dep_list(){
		$this->db->select('d_id,name')->from('department');
		$this->db->where('status',1);
		return $this->db->get()->result_array();
	}
	public  function get_branch_list(){
		$this->db->select('b_id,code,name')->from('branches');
		$this->db->where('status',1);
		return $this->db->get()->result_array();
	}public  function get_brnach_code($b_id){
		$this->db->select('b_id,code,name')->from('branches');
		$this->db->where('b_id',$b_id);
		return $this->db->get()->row_array();
	}
	public  function get_employee_num(){
		$this->db->select('a_id')->from('admin');
		$this->db->order_by('a_id','desc');
		return $this->db->get()->row_array();
	}
	public  function department_emp_list($dids){
		$this->db->select('a.a_id,a.name,d.name as departname,b.name as branchname,a.email,a.mobile,a.code,a.off_mail,a.branch_id,a.doj,a.status,a.created_at')->from('admin as a');
		$this->db->join('department as d','d.d_id=a.dep_id','left');
		$this->db->join('branches as b','b.b_id=a.branch_id','left');
		$this->db->where('a.status !=',2);
		$this->db->where('a.role_id',2);
		$this->db->where_in('a.dep_id',$dids);
		return $this->db->get()->result_array();
	}
	
	public function notification_save($data){
		$this->db->insert('notifications', $data);
		return $insert_id = $this->db->insert_id();
	}
	public function get_payslip_data($date,$a_id,$y){
		$this->db->select('*')->from('payslips');
		$this->db->where('a_id', $a_id);
		$this->db->where('date', $date);
		$this->db->where("DATE_FORMAT(date,'%Y')",$y);
        return $this->db->get()->row_array();
	}
	
	public  function get_present_empLoist(){
		$this->db->select('a.a_id,a.name,a.code,d.name as departname,b.name as branchname')->from('admin as a');
		$this->db->join('department as d','d.d_id=a.dep_id','left');
		$this->db->join('branches as b','b.b_id=a.branch_id','left');
		$this->db->where('a.role_id',2);
		$this->db->where('a.status',1);
		$this->db->group_by('a.a_id');
		//$this->db->where('lr.create_at',date('Y-m-d'));
		$return=$this->db->get()->result_array();
		foreach($return as $li){
			$a_ids_present=$this->get_emp_present_list($li['a_id']);
			$data[$li['a_id']]=$li;
			if(count($a_ids_present)>0){
				$data[$li['a_id']]['status']='Present';
			}else{ 
				$data[$li['a_id']]['status']='Absent';
			}
			
			$data[$li['a_id']]['login_time']=isset($a_ids_present['login_time'])?$a_ids_present['login_time']:'';
			$data[$li['a_id']]['logout_time']=isset($a_ids_present['logout_time'])?$a_ids_present['logout_time']:'';
			$data[$li['a_id']]['hours']=isset($a_ids_present['hours'])?$a_ids_present['hours']:'';
		}
		
		if(!empty($data)){
			return $data;
		}
	}
	
	public  function get_emp_present_list($aid){
		$this->db->select(',lr.login_time,lr.logout_time,lr.hours')->from('login_report as lr');
		$this->db->where('lr.a_id',$aid);
		$this->db->where('lr.create_at',date('Y-m-d'));
		return $this->db->get()->row_array();
	}
	public  function login_emp_department_emp_list($dids){
		$this->db->select('a.a_id,a.name,d.name as departname,b.name as branchname')->from('admin as a');
		$this->db->join('department as d','d.d_id=a.dep_id','left');
		$this->db->join('branches as b','b.b_id=a.branch_id','left');
		$this->db->where('a.status !=',2);
		$this->db->where('a.role_id',2);
		$this->db->where_in('a.dep_id',$dids);
		$return=$this->db->get()->result_array();
		foreach($return as $li){
			$a_ids_present=$this->get_emp_present_list($li['a_id']);
			$data[$li['a_id']]=$li;
			if(count($a_ids_present)>0){
				$data[$li['a_id']]['status']='Present';
			}else{ 
				$data[$li['a_id']]['status']='Absent';
			}
			
			$data[$li['a_id']]['login_time']=isset($a_ids_present['login_time'])?$a_ids_present['login_time']:'';
			$data[$li['a_id']]['logout_time']=isset($a_ids_present['logout_time'])?$a_ids_present['logout_time']:'';
			$data[$li['a_id']]['hours']=isset($a_ids_present['hours'])?$a_ids_present['hours']:'';
		}
		
		if(!empty($data)){
			return $data;
		}
	}
	
	public  function get_employee_data($id){
		$this->db->select('a.a_id,a.doj')->from('admin as a');
		$this->db->where('a.a_id',$id);
		return $this->db->get()->row_array();
	}
	
	public  function get_emp_data($id,$d){
		$this->db->select('a.a_id,a.a_id,a.login_time,a.logout_time,a.hours,a.reason,a.comment,a.diff_time')->from('login_report as a');
		$this->db->where('a.a_id',$id);
		$this->db->where('a.create_at',$d);
		return $this->db->get()->row_array();
	}
	public  function get_emp_leave($id,$d){
		$dd=date("m/d/Y", strtotime($d));
		$this->db->select('li.l_type,li.from_date,li.to_date,li.total_day,li.message,li.reason')->from('leaves as li');
		$this->db->where('li.created_by',$id);
		$this->db->where('li.from_date',$dd);
		$this->db->or_where('li.to_date',$dd);
		$this->db->where('li.status',1);
		return $this->db->get()->row_array();
	}
	
	public  function save_attendance_regulation($d){
		$this->db->insert('attendance_regulation',$d);
        return $this->db->insert_id();
	}
	
	
	/* calender employee list */	
	public function get_emp_department_lists(){
		$this->db->select('d_id,name')->from('department');
		$this->db->where('status !=',2);
		return $this->db->get()->result_array();
	}
	public  function get_branches_list(){
		$this->db->select('b_id,name,code')->from('branches');
		$this->db->where('status !=',2);
		return $this->db->get()->result_array();
	}
	
	public  function get_emp_wise_list(){
		$this->db->select('a.a_id,a.name,a.code,d.name as departname,b.name as branchname')->from('admin as a');
		$this->db->join('department as d','d.d_id=a.dep_id','left');
		$this->db->join('branches as b','b.b_id=a.branch_id','left');
		$this->db->where('a.status !=',2);
		$this->db->where('a.role_id',2);
		$return=$this->db->get()->result_array();
		foreach($return as $li){
				$data[$li['a_id']]=$li;
				$Date1 = date('Y-m-01');
				$Date2=date('Y-m-t');
				$array = array(); 
				$Variable1 = strtotime($Date1); 
				$Variable2 = strtotime($Date2); 
				for ($currentDate = $Variable1; $currentDate <= $Variable2;  
					 $currentDate += (86400)) {                                      
					$Store = date('Y-m-d', $currentDate);
					$array[] = $Store; 
				}
				$n=0;foreach($array as $ali){
					$em_d=$this->Employee_model->get_emp_data($li['a_id'],$ali);
					$leave=$this->Employee_model->get_emp_leave($li['a_id'],$ali);
					$this->load->model('Leaves_model');
					$l_days=$this->Leaves_model->get_leaves_count();
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
					if($tt[0]>=6 && $tt[1]>=30 || $tt[0]>=7 || $tt[0]>7  && $hrs!='leave'){
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
						}else{
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
					
					
				$n++;}
				
				//echo '<pre>';print_r($datas);
				$data[$li['a_id']]=$li;
				$data[$li['a_id']]['log_data']=$datas;
				
		}
		if(!empty($data)){
			return $data;
		}
	}
	
	
	
	/* emp data*/
	public  function get_emp_login_data($id,$d){
		$this->db->select('lr.a_id,lr.login_time,lr.logout_time,lr.hours,lr.reason,lr.comment,lr.diff_time,lr.create_at,lr.to_time,lr.from_time')->from('login_report as lr');
		$this->db->where('lr.a_id',$id);
		$this->db->where('lr.create_at',$d);
		return $this->db->get()->row_array();
	}
	
	public  function get_pop_emp_data($id){
		$this->db->select('a.name,a.code,d.name as departname,b.name as branchname')->from('admin as a');
		$this->db->join('department as d','d.d_id=a.dep_id','left');
		$this->db->join('branches as b','b.b_id=a.branch_id','left');
		$this->db->where('a.a_id',$id);
		return $this->db->get()->row_array();
	}
	
	public  function get_search_emp_wise_list($branch,$dep,$y,$m){
		$this->db->select('a.a_id,a.name,a.code,d.name as departname,b.name as branchname')->from('admin as a');
		$this->db->join('department as d','d.d_id=a.dep_id','left');
		$this->db->join('branches as b','b.b_id=a.branch_id','left');
		$this->db->where('a.status !=',2);
		$this->db->where('a.role_id',2);
		if($dep!=''){
			$this->db->where('a.dep_id',$dep);
		}
		if($branch!=''){
			$this->db->where('a.branch_id',$branch);
		}
		$return=$this->db->get()->result_array();
		foreach($return as $li){
				$data[$li['a_id']]=$li;
				$query_date =$y.'-'.$m.'-'.'01';
				$Date1=date('Y-m-01', strtotime($query_date));
				$Date2=date('Y-m-t', strtotime($query_date));				
				$array = array(); 
				$Variable1 = strtotime($Date1); 
				$Variable2 = strtotime($Date2); 
				for ($currentDate = $Variable1; $currentDate <= $Variable2;  
					 $currentDate += (86400)) {                                      
					$Store = date('Y-m-d', $currentDate);
					$array[] = $Store; 
				}
				$n=0;foreach($array as $ali){
					$em_d=$this->Employee_model->get_emp_data($li['a_id'],$ali);
					$leave=$this->Employee_model->get_emp_leave($li['a_id'],$ali);
					$this->load->model('Leaves_model');
					$l_days=$this->Leaves_model->get_leaves_count();
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
					if($tt[0]>=6 && $tt[1]>=30 || $tt[0]>=7 || $tt[0]>7  && $hrs!='leave'){
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
						}else{
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
					
					
				$n++;}
				
				//echo '<pre>';print_r($datas);exit;
				$data[$li['a_id']]=$li;
				$data[$li['a_id']]['log_data']=$datas;
				
		}
		if(!empty($data)){
			return $data;
		}
	}
	
	
	public  function get_unread_attence_reg(){
		$this->db->select('COUNT(ar.a_r_id)as unread_cnt')->from('attendance_regulation as ar');
		$this->db->where('ar.read_cnt',0);
		$this->db->where('ar.status !=',3);
		return $this->db->get()->row_array();
	}
	public  function get_unread_resignationa_reg(){
		$this->db->select('COUNT(r.r_id) as unread_cnt')->from('resignationa as r');
		$this->db->where('r.read_cnt',0);
		$this->db->where('r.status !=',3);
		return $this->db->get()->row_array();
	}
	
	
	
}