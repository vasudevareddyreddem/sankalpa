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
	public  function get_all_feedback_list(){
		$this->db->select('fd.*')->from('feed_back as fd');
		return $this->db->get()->result_array();
	}
	public  function get_get_feedback_details($id){
		$this->db->select('fd.*')->from('feed_back as fd');
		$this->db->where('fd.f_b_id',$id);
		return $this->db->get()->row_array();
	}
	
	
	
	
  }