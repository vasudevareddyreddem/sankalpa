<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Leaves_model extends CI_Model 

{
	function __construct() 
	{
		parent::__construct();
		$this->load->database("default");
	}
	public  function save($d){
		$this->db->insert('leaves',$d);
        return $this->db->insert_id();	
	}
	public  function l_list($id){
		$this->db->select('l.l_id,l.from_date,l.to_date,l.l_type,l.message,l.status,l.total_day,l.created_at,a.name as approvedby,l.reason')->from('leaves as l');
		$this->db->join('admin as a','a.a_id=l.approvedby','left');
		$this->db->where('l.a_id',$id);
		return $this->db->get()->result_array();
	}
	public  function all_leaves_list(){
		$this->db->select('l.l_id,l.from_date,l.to_date,l.l_type,l.message,l.status,l.total_day,l.created_at,a.name as approvedby,as.name as empname,l.reason')->from('leaves as l');
		$this->db->join('admin as a','a.a_id=l.approvedby','left');
		$this->db->join('admin as as','as.a_id=l.a_id','left');
		//$this->db->where('l.a_id',$id);
		return $this->db->get()->result_array();
	}
	public  function d_active_list(){
		$this->db->select('d_id,title,description,document,status,created_at')->from('documents');
		$this->db->where('status',1);
		return $this->db->get()->result_array();
	}
	public  function update($id,$data){
		$this->db->where('l_id',$id);
		return $this->db->update('leaves',$data);
	}
	public function leave_delete($id){
		$this->db->where('l_id',$id);
		return $this->db->delete('leaves');
	}
	
	public function get_emp_list(){
		$this->db->select('a_id,name')->from('admin');
		$this->db->where('role_id',2);
		$this->db->where('status',1);
		return $this->db->get()->result_array();
	}
	
	public  function get_leaves_count(){
		$this->db->select('sick,causal,l_d_id,sat_day')->from('leaves_days');
		return $this->db->get()->row_array();
	}
	public  function days_update($id,$d){
		$this->db->where('l_d_id',$id);
		return $this->db->update('leaves_days',$d);
	}
	
	public function emp_leave_count($id){
		$this->db->select('SUM(total_day) as lsum')->from('leaves');
		$this->db->where('status',1);
		$this->db->where('a_id',$id);
		return $this->db->get()->row_array();
	}
	
	public  function manager_departments($id){
		$this->db->select('d_id')->from('user_departments');
		$this->db->where('a_id',$id);
		$this->db->where('status',1);
		return $this->db->get()->result_array();
	}
	public  function department_emp_leaves($dids){
		$this->db->select('a.name as empname,d.name as departname,b.name as branchname,l.l_id,l.from_date,l.to_date,l.l_type,l.message,l.status,l.total_day,l.created_at,as.name as approvedby,l.reason')->from('leaves as l');
		$this->db->join('admin as a','a.a_id=l.a_id','left');
		$this->db->join('admin as as','as.a_id=l.approvedby','left');
		$this->db->join('department as d','d.d_id=a.dep_id','left');
		$this->db->join('branches as b','b.b_id=a.branch_id','left');
		$this->db->group_by('l.l_id');
		$this->db->where_in('a.dep_id',$dids);
		return $this->db->get()->result_array();
	}
	
	public  function get_holidays_list(){
		$this->db->select('h_id,date')->from('holidays');
		$this->db->where('status',1);
		return $this->db->get()->result_array();
	}
	/* add_resignation*/
	
	public function add_resignation($d){
		$this->db->insert('resignationa',$d);
        return $this->db->insert_id();	
	}
	
	public  function get_resignation_list($id){
		$this->db->select('r.r_id,r.reason,r.created_at,r.comment,r.updated_at,r.updated_by,r.status,r.last_date,a.name as updated_name')->from('resignationa as r');
		$this->db->join('admin as a','a.a_id=r.updated_by','left');
		$this->db->where('r.emp_id',$id);
		$this->db->where('r.status !=',3);
		return $this->db->get()->result_array();	
	}
	public  function get_all_resignation_list(){
		$this->db->select('r.r_id,r.emp_id,r.reason,r.created_at,r.comment,r.updated_at,r.updated_by,r.status,r.last_date,as.doj,as.code,a.name as updated_name,as.name as empname')->from('resignationa as r');
		$this->db->join('admin as a','a.a_id=r.updated_by','left');
		$this->db->join('admin as as','as.a_id=r.emp_id','left');
		$this->db->where('r.status !=',3);
		return $this->db->get()->result_array();	
	}
	public  function update_resignation($id,$d){
		$this->db->where('r_id',$id);
		return $this->db->update('resignationa',$d);
	}	
	public function get_resignation_details($id){
		$this->db->select('r.r_id,r.emp_id,r.reason,r.created_at,r.comment,r.updated_at,r.updated_by,r.status,r.last_date,as.doj,as.code,a.name as updated_name,as.name as empname')->from('resignationa as r');
		$this->db->join('admin as a','a.a_id=r.updated_by','left');
		$this->db->join('admin as as','as.a_id=r.emp_id','left');
		$this->db->where('r.r_id',$id);
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
	public  function save_termination($d){
		$this->db->insert('termination',$d);
        return $this->db->insert_id();
	}
	public  function get_emp_details($id){
		$this->db->select('a.a_id,a.name,d.name as departname,b.name as branchname,a.email,a.mobile,a.code,a.off_mail,a.branch_id,a.doj,a.status,a.created_at')->from('admin as a');
		$this->db->join('department as d','d.d_id=a.dep_id','left');
		$this->db->join('branches as b','b.b_id=a.branch_id','left');
		$this->db->where('a.a_id',$id);
		return $this->db->get()->row_array();
	}
	
	public  function get_termination_emp_list(){
		$this->db->select('a.a_id,a.name,d.name as departname,b.name as branchname,a.email,a.mobile,a.code,a.off_mail,a.branch_id,a.doj,t.created_at,t.document,t.document2,t.document3,t.comment')->from('termination as t');
		$this->db->join('admin as a','a.a_id=t.emp_id','left');
		$this->db->join('department as d','d.d_id=a.dep_id','left');
		$this->db->join('branches as b','b.b_id=a.branch_id','left');
		return $this->db->get()->result_array();
	}
	public  function update_employee($id,$d){
		$this->db->where('a_id',$id);
		return $this->db->update('admin',$d);
	}	
	
	
	
}