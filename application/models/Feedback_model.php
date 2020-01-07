<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Feedback_model extends CI_Model 

{
	function __construct() 
	{
		parent::__construct();
		$this->load->database("default");
	}
		
	public  function save_feedback($d){
		$this->db->insert('feed_back',$d);
        return $this->db->insert_id();
	}
	public  function save_question_answer($d){
		$this->db->insert('feed_back_answer',$d);
        return $this->db->insert_id();
	}
	public  function get_all_feedback_list(){
		$this->db->select('fd.*')->from('feed_back as fd');
		return $this->db->get()->result_array();
	}
	public  function get_opd_question_list($t){
		$this->db->select('q.q_id,q.qno,q.type,q.name')->from('question as q');
		$this->db->where('q.type',$t);
		$this->db->where('q.status',1);
		$this->db->order_by('q.qno','asc');
		return $this->db->get()->result_array();
	}
	public  function get_get_feedback_details($id){
		$this->db->select('fd.*')->from('feed_back as fd');
		$this->db->where('fd.f_b_id',$id);
		return $this->db->get()->row_array();
	}
	
	public function get_get_question_details($id){
		$this->db->select('fda.qno,fda.q_id,fda.answer,fda.f_b_id,q.name')->from('feed_back_answer as fda');
		$this->db->join('question as q','q.q_id=fda.q_id','left');
		$this->db->where('fda.f_b_id',$id);
		return $this->db->get()->result_array();
	}
	
	public  function d_list(){
		$this->db->select('d_id,name,status,created_at')->from('department');
		$this->db->where('status',1);
		return $this->db->get()->result_array();
	}
	public  function location_list(){
		$this->db->select('l_id,l_name,status,created_at')->from('locations');
		$this->db->where('status',1);
		return $this->db->get()->result_array();	
	}
	public  function source_list(){
		$this->db->select('s_id,s_name,status,created_at')->from('source');
		$this->db->where('status',1);
		return $this->db->get()->result_array();	
	}
	
	
	
	
  }