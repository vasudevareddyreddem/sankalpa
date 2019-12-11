<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Home extends CI_Controller {

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
		$this->load->model('Admin_model');
	}
	public function index()
	{	
		$this->load->view('html/index');
	}
	public function list_view()
	{	
		$this->load->view('html/list_view');
	}
	public function feed_view()
	{	
		$this->load->view('html/feed_view');
	}
	public function ipd()
	{	
		$this->load->view('html/ipd');
	}
	public function opd()
	{	
		$this->load->view('html/opd');
	}
	
	
	
	
}
