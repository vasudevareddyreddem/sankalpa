<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Document_model extends CI_Model 

{
	function __construct() 
	{
		parent::__construct();
		$this->load->database("default");
	}
	public  function save($d){
		$this->db->insert('documents',$d);
        return $this->db->insert_id();	
	}
	public  function d_list(){
		$this->db->select('d_id,title,description,document,status,created_at')->from('documents');
		$this->db->where('status !=',2);
		return $this->db->get()->result_array();
	}
	public  function d_active_list(){
		$this->db->select('d_id,title,description,document,status,created_at')->from('documents');
		$this->db->where('status',1);
		return $this->db->get()->result_array();
	}
	public  function update($id,$data){
		$this->db->where('d_id',$id);
		return $this->db->update('documents',$data);
	}
	public  function details($id){
		$this->db->select('d_id,title,description,document,status,created_at')->from('documents');
		$this->db->where('d_id',$id);
		return $this->db->get()->row_array();
	}
	
	
	
	
}