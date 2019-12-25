<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Location_model extends CI_Model 

{
	function __construct() 
	{
		parent::__construct();
		$this->load->database("default");
	}
	
	public function save_location($d){
		$this->db->insert('locations',$d);
        return $this->db->insert_id();
	}
	
	public  function location_list($id){
		$this->db->select('l_id,l_name,status,created_at')->from('locations');
		$this->db->where('created_by',$id);
		$this->db->where('status !=',2);
		return $this->db->get()->result_array();	
	}
	public  function get_location_details($id){
		$this->db->select('l_id,l_name,status')->from('locations');
		$this->db->where('l_id',$id);
		return $this->db->get()->row_array();	
	}
	public  function check_location_exit($n){
		$this->db->select('l_id')->from('locations');
		$this->db->where('l_name',$n);
		$this->db->where('status !=',2);
		return $this->db->get()->row_array();	
	}	
	public  function location_update($id,$d){
		$this->db->where('l_id',$id);
		return $this->db->update('locations',$d);
	}	
	
	
	
	
	
	
  }