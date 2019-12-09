<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Notification_model extends CI_Model
{
	function __construct() {
        parent::__construct();
    }

    public  function save($d){
		$this->db->insert('adminnotifications',$d);
		return $this->db->insert_id();
	}
	public  function get_noti_list($id){
		$this->db->select('n.n_id,n.title,n.message,n.status,n.created_at')->from('adminnotifications as n');
		$this->db->where('n.created_by',$id);
		$this->db->where('n.status !=',2);
		return $this->db->get()->result_array();		
	}
	public  function get_noti_details($id){
		$this->db->select('n.n_id,n.title,n.message,n.status,n.created_at')->from('adminnotifications as n');
		$this->db->where('n.n_id',$id);
		return $this->db->get()->row_array();		
	}
	public  function update($id,$d){
		$this->db->where('n_id',$id);
		return $this->db->update('adminnotifications',$d);		
	}
	
	public  function get_all_emp_list(){
		$this->db->select('a.a_id,a.name')->from('admin as a');
		$this->db->where('a.role_id',2);
		$this->db->where('a.status',1);
		return $this->db->get()->result_array();	
	}
	
	public  function save_emp_notification($d){
		$this->db->insert('notifications',$d);
		return $this->db->insert_id();
	}
	
	public  function update_notification_model($aid,$d){
		$this->db->where('a_id',$aid);
		return $this->db->update('notifications',$d);	
	}
	
	public  function get_all_notifications($id){
		$this->db->select('n.n_id,n.title,n.msg,n.created_at,a.name')->from('notifications as n');
		$this->db->join('admin as a','a.a_id=n.created_by','left');
		$this->db->where('n.a_id',$id);
		return $this->db->get()->result_array();
	}
	public function save_suggetion_data($data){
		$this->db->insert('suggestion_list', $data);
		return $insert_id = $this->db->insert_id();
	}
	public  function get_employee_details($id){
		$this->db->select('a.a_id,a.name')->from('admin as a');
		$this->db->where('a.a_id',$id);
		return $this->db->get()->row_array();	
	}
	public function get_all_suggestion_data(){
		$this->db->select('suggestion_list.*,a.name as emp_name,a.profile_pic, replayed.name as empreplyname, replayed.profile_pic as empreplyimage,')->from('suggestion_list');
		$this->db->join('admin as a', 'a.a_id = suggestion_list.a_id', 'left');
		$this->db->join('admin as replayed', 'replayed.a_id = suggestion_list.replayed_id', 'left');
        return $this->db->get()->result_array();
	}
	public function get_suggestion_data($emp_id){
		$this->db->select('suggestion_list.*,a.name as emp_name,a.profile_pic, replayed.name as empreplyname,, replayed.profile_pic as empreplyimage,')->from('suggestion_list');
		$this->db->join('admin as a', 'a.a_id = suggestion_list.a_id', 'left');
		$this->db->join('admin as replayed', 'replayed.a_id = suggestion_list.replayed_id', 'left');
		$this->db->where('suggestion_list.a_id', $emp_id);
        return $this->db->get()->result_array();
	}
}