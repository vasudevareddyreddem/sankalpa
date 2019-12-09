<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Pending_model extends CI_Model 

{
	function __construct() 
	{
		parent::__construct();
		$this->load->database("default");
	}
	
	public  function get_attendance_regulation_list(){
		$this->db->select('ar.a_r_id,ar.status,ar.to_time,ar.from_time,ar.a_date,ar.adding_time,ar.reason,a.name,a.mobile,ar.created_at,as.name as updated_by')->from('attendance_regulation as ar');
		$this->db->join('admin as a','a.a_id=ar.emp_id','left');
		$this->db->join('admin as as','as.a_id=ar.updated_by','left');
		return $this->db->get()->result_array();
	}
	
	public  function update_attendance_regulation($id,$d){
		$this->db->where('a_r_id',$id);
		return $this->db->update('attendance_regulation',$d);
	}
	public  function update_hrs($id,$d){
		$this->db->where('id',$id);
		return $this->db->update('login_report',$d);
	}
	
	public  function get_attendance_regulation($id){
		$this->db->select('*')->from('attendance_regulation');
		$this->db->where('a_r_id',$id);
		return $this->db->get()->row_array();
	}
	public  function emp_login_data($id,$date){
		$this->db->select('*')->from('login_report');
		$this->db->where('a_id',$id);
		$this->db->where('create_at',$date);
		return $this->db->get()->row_array();
	}
	
	public  function save_logintime($d){
		$this->db->insert('login_report',$d);
        return $this->db->insert_id();
	}
	
	
	
}