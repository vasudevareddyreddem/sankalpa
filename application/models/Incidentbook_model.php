<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Incidentbook_model extends CI_Model 

{
	function __construct() 
	{
		parent::__construct();
		$this->load->database("default");
	}
	
	
	public function save_book($d){
		$this->db->insert('incident',$d);
        return $this->db->insert_id();
	}	
	public  function get_book_list($id){
		$this->db->select('*')->from('incident as id');
		$this->db->where('id.created_by',$id);
		return $this->db->get()->result_array();
	}
	
	
	
	
  }