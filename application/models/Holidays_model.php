<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Holidays_model extends CI_Model 

{
	function __construct() 
	{
		parent::__construct();
		$this->load->database("default");
	}
	public  function save($d){
		$this->db->insert('holidays',$d);
        return $this->db->insert_id();	
	}
	public  function h_list(){
		$this->db->select('h_id,date,festival,day_name,status,created_at')->from('holidays');
		$this->db->where('status !=',2);
		return $this->db->get()->result_array();
	}
	public  function update($id,$data){
		$this->db->where('h_id',$id);
		return $this->db->update('holidays',$data);
	}
	public  function details($id){
		$this->db->select('h_id,date,festival,day_name,status,created_at')->from('holidays');
		$this->db->where('h_id',$id);
		return $this->db->get()->row_array();
	}
	public  function h_active_list(){
		$this->db->select('h_id,date,festival,day_name,status,created_at')->from('holidays');
		$this->db->where('status',1);
		return $this->db->get()->result_array();
	}
	
	
	
	
}