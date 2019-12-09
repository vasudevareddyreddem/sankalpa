<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Attendance_model extends CI_Model 

{
	function __construct() 
	{
		parent::__construct();
		$this->load->database("default");
	}
	public function get_emp_ids($id){
		$this->db->select('a.*,d.name as departname,b.name as branchname,')->from('admin as a');
		$this->db->join('department as d','d.d_id=a.dep_id','left');
		$this->db->join('branches as b','b.b_id=a.branch_id','left');
		$this->db->where('a.code',$id);
		return $this->db->get()->row_array();
	}
	
	public  function check_attendece($id,$ltime){
		$this->db->select('id,a_id')->from('login_report');
		$this->db->where('a_id',$id);
		$this->db->where('login_time',$ltime);
		return $this->db->get()->row_array();
	}
	public  function save_timesheet($d){
		$this->db->insert('login_report', $d);
		return $insert_id = $this->db->insert_id();
	}
	public  function update_login_time($id,$da){
		$this->db->where('id', $id);
		return $this->db->update('login_report',$da);
	}
	
	public function get_login_details($id){
		$this->db->select('lr.id,lr.emp_office_id,lr.emp_id,lr.login_time,lr.logout_time,lr.hours,lr.create_at')->from('login_report as lr');
		$this->db->where('lr.emp_id',$id);
		$this->db->limit(30);
		$this->db->order_by('id','desc');
		return $this->db->get()->result_array();
	}
	public function get_employee_details($id){
		$this->db->select('emp_name,emp_mobile,emp_id,emp_profilepic,')->from('employee');
		$this->db->where('emp_id',$id);
		return $this->db->get()->row_array();
	}
	
	/* payslip */
	public function save_invoice_data($data){
		$this->db->insert('payslips', $data);
		return $insert_id = $this->db->insert_id();
	}
	public function notification_save($data){
		$this->db->insert('notifications', $data);
		return $insert_id = $this->db->insert_id();
	}
	
	public  function check_invoice_pdf($aid,$month){
		$this->db->select('id,a_id')->from('payslips');
		$this->db->where('a_id',$aid);
		$this->db->where('month',$month);
		return $this->db->get()->row_array();
	}
	
	public  function update_invoice_data($id,$month,$d){
		$this->db->where('id', $id);
		$this->db->where('month', $month);
		return $this->db->update('payslips',$d);
	}
	
	public  function get_emp_payslips($aid){
		$this->db->select('id,a_id,month,inovie_name,date')->from('payslips');
		$this->db->where('a_id',$aid);
		return $this->db->get()->result_array();
	}
	


}