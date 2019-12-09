<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Work_model extends CI_Model 

{
	function __construct() 
	{
		parent::__construct();
		$this->load->database("default");
	}
	public  function emp_list(){
		$this->db->select('a.a_id,a.name,d.name as departname,b.name as branchname,a.email,a.mobile,a.code,a.off_mail,a.branch_id,a.doj,a.status,a.created_at')->from('admin as a');
		$this->db->join('department as d','d.d_id=a.dep_id','left');
		$this->db->join('branches as b','b.b_id=a.branch_id','left');
		$this->db->where('a.status !=',2);
		$this->db->where('a.role_id',2);
		return $this->db->get()->result_array();	
	}
	
	public function save_work($d){
		$this->db->insert('assign_work',$d);
        return $this->db->insert_id();
	}
	
	public  function work_list($id){
		$this->db->select('a.name as emp_name,ass.name as assignby,aw.a_w_id,aw.emp_id,aw.from_date,aw.to_date,aw.total_day,aw.message,aw.status,')->from('assign_work as aw');
		$this->db->join('admin as a','a.a_id=aw.emp_id','left');
		$this->db->join('admin as ass','ass.a_id=aw.created_by','left');
		return $this->db->get()->result_array();	
	}
	public  function emp_work_list($emp){
		$this->db->select('a.name as emp_name,ass.name as assignby,aw.a_w_id,aw.emp_id,aw.from_date,aw.to_date,aw.total_day,aw.message,aw.status,')->from('assign_work as aw');
		$this->db->join('admin as a','a.a_id=aw.emp_id','left');
		$this->db->join('admin as ass','ass.a_id=aw.created_by','left');
		$this->db->where('aw.emp_id',$emp);
		return $this->db->get()->result_array();	
	}
	
	
	
	
  }