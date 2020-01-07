<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Source_model extends CI_Model 

{
	function __construct() 
	{
		parent::__construct();
		$this->load->database("default");
	}
	
	public function save_source($d){
		$this->db->insert('source',$d);
        return $this->db->insert_id();
	}
	
	public  function source_list($id){
		$this->db->select('s_id,s_name,status,created_at')->from('source');
		$this->db->where('created_by',$id);
		$this->db->where('status !=',2);
		return $this->db->get()->result_array();	
	}
	public  function get_source_details($id){
		$this->db->select('s_id,s_name,status')->from('source');
		$this->db->where('s_id',$id);
		return $this->db->get()->row_array();	
	}
	public  function check_source_exit($n){
		$this->db->select('s_id')->from('source');
		$this->db->where('s_name',$n);
		$this->db->where('status !=',2);
		return $this->db->get()->row_array();	
	}	
	public  function source_update($id,$d){
		$this->db->where('s_id',$id);
		return $this->db->update('source',$d);
	}	
	
	
	
	
	
	
  }