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
	public  function view_work_comment($id){
		$this->db->select('awc.commet,awc.created_at,a.name')->from('assign_work_comments as awc');
		$this->db->join('admin as a','a.a_id=awc.created_by','left');
		$this->db->where('awc.a_w_id',$id);
		return $this->db->get()->result_array();
	}
	
	
	
	
  }