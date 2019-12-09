<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Branches_model extends CI_Model 

{
	function __construct() 
	{
		parent::__construct();
		$this->load->database("default");
	}
	public  function save($d){
		$this->db->insert('branches',$d);
        return $this->db->insert_id();	
	}
	public  function check($code,$nam){
		$this->db->select('b_id')->from('branches');
		$this->db->where('name',$nam);
		$this->db->where('code',$code);
		$this->db->where('status !=',2);
		return $this->db->get()->row_array();
	}
	public  function b_list($id){
		$this->db->select('b_id,code,name,status,created_at')->from('branches');
		$this->db->where('created_by',$id);
		$this->db->where('status !=',2);
		return $this->db->get()->result_array();
	}
	public  function details($id){
		$this->db->select('b_id,code,name,status,created_at')->from('branches');
		$this->db->where('b_id',$id);
		return $this->db->get()->row_array();
	}
	public  function update($id,$data){
		$this->db->where('b_id',$id);
		return $this->db->update('branches',$data);
	}
	
	
	
}