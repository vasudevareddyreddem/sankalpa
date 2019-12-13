<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Questions_model extends CI_Model 

{
	function __construct() 
	{
		parent::__construct();
		$this->load->database("default");
	}
	
	public function save_question($d){
		$this->db->insert('question',$d);
        return $this->db->insert_id();
	}
	
	public  function questions_list($id){
		$this->db->select('q_id,qno,name,status,type,created_at,type')->from('question');
		$this->db->where('created_by',$id);
		$this->db->where('status !=',2);
		return $this->db->get()->result_array();	
	}
	public  function get_question_details($id){
		$this->db->select('q_id,qno,name,status,type,created_at')->from('question');
		$this->db->where('q_id',$id);
		return $this->db->get()->row_array();	
	}
	public  function check_question_exit($t,$qn,$q){
		$this->db->select('q_id,qno,name,status,type,created_at')->from('question');
		$this->db->where('type',$t);
		$this->db->where('qno',$qn);
		$this->db->where('name',$q);
		$this->db->where('created_by !=',2);
		return $this->db->get()->row_array();	
	}	
	public  function question_update($id,$d){
		$this->db->where('q_id',$id);
		return $this->db->update('question',$d);
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
	
	
	
	
  }