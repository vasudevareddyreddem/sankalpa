<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sidebar extends CI_Controller {

	public function __construct() 
	{
		parent::__construct();	
		$this->load->helper(array('form', 'url'));
		$this->load->library('form_validation');
		$this->load->library('session');
		$this->load->library('email');
		$this->load->library('user_agent');
		$this->load->helper('directory');
		$this->load->helper('security');
		$this->load->library('encryption');	
		$this->load->model('Admin_model');
		$e_key=$this->config->item('encryption_key');
			if($this->session->userdata('hms_details'))
			{
				$l_data=$this->session->userdata('hms_details');
				$data['hms_details']=$this->Admin_model->get_user_details($l_data['a_id']);
				$data['u_d']=$this->Admin_model->get_basic_user_details($l_data['a_id']);
				
				if($l_data['role_id']==1){
					$data['m_list']=$this->Admin_model->get_menu_list();
				}else{
					$data['m_list']=$this->Admin_model->get_user_menu_list($l_data['a_id']);
					//echo $this->db->last_query();
				}
				//$data['noti']=$this->Admin_model->get_emp_notification($l_data['a_id']);
				//$data['read_cnt']=$this->Admin_model->get_unred_emp_notification($l_data['a_id']);
				//echo '<pre>';print_r($data);exit;
				$this->load->view('admin/header',$data);
			}else{
				$data['hms_details']=array();
				$data['u_d']=array();
				$this->load->view('admin/header',$data);
			}
	}
	
}
