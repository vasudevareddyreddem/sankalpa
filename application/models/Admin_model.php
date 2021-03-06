<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin_model extends CI_Model 

{
	function __construct() 
	{
		parent::__construct();
		$this->load->database("default");
	}
	public function login_details($data){
		$sql = "SELECT * FROM admin WHERE (email ='".$data['email']."' AND pwd='".$data['pwd']."' AND status=1) OR (mobile ='".$data['email']."' AND pwd='".$data['pwd']."' AND status=1)";
		return $this->db->query($sql)->row_array();	
	}
	public function get_adminpassword_details($admin_id){
		$this->db->select('admin.pwd')->from('admin');		
		$this->db->where('a_id', $admin_id);
        return $this->db->get()->row_array();	
	}
	public  function check_login_time($aid,$date){
		$this->db->select('*')->from('login_report');
		$this->db->where('a_id', $aid);
		$this->db->where('create_at', $date);
        return $this->db->get()->row_array();
	}
	public  function update_login_time_status($id,$d){
		$this->db->where('id',$id);
		return $this->db->update('login_report',$d);
	}
	public  function save_login_time_status($d){
		$this->db->insert('login_report',$d);
        return $this->db->insert_id();
	}
	public function get_admin_details($admin_id){
		$this->db->select('admin.a_id,admin.role_id,admin.email')->from('admin');		
		$this->db->where('a_id', $admin_id);
		$this->db->where('status', 1);
        return $this->db->get()->row_array();	
	}
	public function update_admin_details($a_id,$data){
		$this->db->where('a_id',$a_id);
    	return $this->db->update("admin",$data);
	}
	public function check_email_exits($email){
		$this->db->select('admin.a_id,admin.email,admin.org_pwd')->from('admin');		
		$this->db->where('email', $email);
		$this->db->where('status !=',2);
        return $this->db->get()->row_array();	
	}
	public  function get_user_details($a_id){
		$this->db->select('admin.a_id,admin.role_id,admin.name,admin.email,admin.address,admin.mobile,admin.profile_pic')->from('admin');		
		$this->db->where('admin.a_id',$a_id);
        return $this->db->get()->row_array();	
	}
	public  function get_menu_list(){
		$this->db->select('m_id,m_name')->from('modules');		
		$this->db->where('m_status', 1);
        $return=$this->db->get()->result_array();
		foreach($return as $li){
			$menu=$this->get_submenu_list($li['m_id']);
			$data[$li['m_id']]=$li;
			$data[$li['m_id']]['menu']=$menu;
		}
		if(!empty($data)){
			return $data;
		}
	}
	public  function get_submenu_list($id){
		$this->db->select('m_m_id,m_menu_name,m_menu_url')->from('modules_menu');		
		$this->db->where('m_name',$id);
		$this->db->where('status', 1);
        return $this->db->get()->result_array();
	}
	
	public  function get_user_menu_list($a_id){
		$this->db->select('urp.m_id,m.m_name')->from('user_role_privileges as urp');
		$this->db->join('modules as m','m.m_id=urp.m_id','left');
		$this->db->where('urp.u_id',$a_id);
		$this->db->group_by('urp.m_id');
		$return=$this->db->get()->result_array();
		foreach($return as $li){
			$menu=$this->get_user_submenu_list($li['m_id'],$a_id);
			$data[$li['m_id']]=$li;
			$data[$li['m_id']]['menu']=$menu;
		}
		if(!empty($data)){
			return $data;
		}
	}
	public  function get_user_submenu_list($id,$a_id){
		$this->db->select('m.m_menu_name,m.m_menu_url')->from('user_role_privileges as urp');
		$this->db->join('modules_menu as m','m.m_m_id=urp.m_m_id','left');
		$this->db->where('urp.u_id',$a_id);
		$this->db->where('m.m_name',$id);
		$this->db->order_by('m.m_m_id','asc');
        return $this->db->get()->result_array();
	}
	
	public  function update_h_details($a_id,$data){
		$this->db->where('h_id',$a_id);
    	return $this->db->update("hospital_details",$data);
	}
	public  function get_hospital_details($id){
		$this->db->select('h_id,name,website,email,mobile,address,logo')->from('hospital_details');
		$this->db->where('h_id',$id);
    	return $this->db->get()->row_array();
	}
	
	// dashboard 
	
	public  function get_ip_cnt(){
		$this->db->select('count(i_p_id) as cnt')->from('ip_patients');
    	return $this->db->get()->row_array();
	}
	public  function get_med_list(){
		$this->db->select('count(med_id) as cnt')->from('medicines');
		$this->db->where('status',1);
    	return $this->db->get()->row_array();
	}public  function get_patients_list(){
		$this->db->select('count(p_id) as cnt')->from('patients');
		$this->db->where('status',1);
    	return $this->db->get()->row_array();
	}public  function get_op_list(){
		$this->db->select('count(o_p_id) as cnt')->from('op_patients');
		$this->db->where('status',1);
    	return $this->db->get()->row_array();
	}
	public  function get_emp_full_details($id){
		$this->db->select('a.*,d.name as departname,b.name as branchname')->from('admin as a');
		$this->db->join('department as d','d.d_id=a.dep_id','left');
		$this->db->join('branches as b','b.b_id=a.branch_id','left');
		$this->db->where('a.a_id',$id);
		  	return $this->db->get()->row_array();
	}
	public  function manager_departments($id){
		$this->db->select('d_id')->from('user_departments');
		$this->db->where('a_id',$id);
		$this->db->where('status',1);
		return $this->db->get()->result_array();
	}
	
	public function get_emp_notification($id){
		$this->db->select('n_id,a_id,title,msg,created_at')->from('notifications as n');
		$this->db->where('n.a_id',$id);
		$this->db->order_by('n_id','desc');
		return $this->db->get()->result_array();
	}
	public function get_unred_emp_notification($id){
		$this->db->select('COUNT(n.n_id) as cnt')->from('notifications as n');
		$this->db->where('n.a_id',$id);
		$this->db->where('n.read',0);
		return $this->db->get()->row_array();
	}
	
	public  function get_basic_user_details($id){
		$this->db->select('a.name,a.designation,a.dep_id,a.branch_id,d.name as departname,b.name as branchname')->from('admin as a');
		$this->db->join('department as d','d.d_id=a.dep_id','left');
		$this->db->join('branches as b','b.b_id=a.branch_id','left');
		$this->db->where('a.a_id',$id);
		return $this->db->get()->row_array();
	}
	
	
  }