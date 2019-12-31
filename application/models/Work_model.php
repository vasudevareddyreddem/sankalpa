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
		$this->db->select('a.name as emp_name,ass.name as assignby,aw.a_w_id,aw.emp_id,aw.prioritization,aw.from_date,aw.to_date,aw.total_day,aw.message,aw.status,')->from('assign_work as aw');
		$this->db->join('admin as a','a.a_id=aw.emp_id','left');
		$this->db->join('admin as ass','ass.a_id=aw.created_by','left');
		return $this->db->get()->result_array();	
	}
	public  function emp_work_list($emp){
		$this->db->select('a.name as emp_name,ass.name as assignby,aw.a_w_id,aw.emp_id,aw.prioritization,aw.from_date,aw.to_date,aw.total_day,aw.message,aw.status,')->from('assign_work as aw');
		$this->db->join('admin as a','a.a_id=aw.emp_id','left');
		$this->db->join('admin as ass','ass.a_id=aw.created_by','left');
		$this->db->where('aw.emp_id',$emp);
		return $this->db->get()->result_array();	
	}	
	public  function view_work_details($id){
		$this->db->select('*')->from('assign_work as aw');
		$this->db->where('aw.a_w_id',$id);
		return $this->db->get()->row_array();
	}	
	public  function work_update($id,$d){
		$this->db->where('a_w_id',$id);
		return $this->db->update('assign_work',$d);
	}	
	public  function save_work_comments($d){
		$this->db->insert('assign_work_comments',$d);
        return $this->db->insert_id();
	}
	public  function view_work_comment($id){
		$this->db->select('awc.commet,awc.created_at,a.name')->from('assign_work_comments as awc');
		$this->db->join('admin as a','a.a_id=awc.created_by','left');
		$this->db->where('awc.a_w_id',$id);
		return $this->db->get()->result_array();
	}
	public  function get_emp_list($id){
		$this->db->select('a_id,name')->from('admin');
		$this->db->where('status',1);
		$this->db->where('role_id',2);
		return $this->db->get()->result_array();
	}
	
	public  function get_emp_works_list($empid,$pro){
		$this->db->select('a.name,aw.a_w_id,aw.from_date,aw.to_date,aw.prioritization,aw.to_date,aw.total_day,aw.to_date,aw.message,aw.to_date,aw.status,ass.name as assignby,')->from('assign_work as aw');
		$this->db->join('admin as a','a.a_id=aw.emp_id','left');
		$this->db->join('admin as ass','ass.a_id=aw.created_by','left');

		if($empid!='ALL'){
			$this->db->where('aw.emp_id',$empid);
		}if($pro!='ALL'){
			$this->db->where('aw.prioritization',$pro);
		}		
		return $this->db->get()->result_array();
	}
	
	
	
	
  }