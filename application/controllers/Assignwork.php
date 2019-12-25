<?php
defined('BASEPATH') OR exit('No direct script access allowed');
@include_once( APPPATH . 'controllers/Sidebar.php');
class Assignwork extends sidebar {
	public function __construct() 
	{
		parent::__construct();	
	
		$this->load->model('Work_model');
		$this->load->model('Leaves_model');
	}
	public function index()
	{	
		if($this->session->userdata('hms_details'))
			{
				$l_data=$this->session->userdata('hms_details');
				$data['w_list']=$this->Work_model->work_list($l_data['a_id']);
				$this->load->view('work/list',$data);
				$this->load->view('admin/footer');
			}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
	}
	public function add()
	{	
		if($this->session->userdata('hms_details'))
			{
				$l_data=$this->session->userdata('hms_details');
				$data['e_list']=$this->Work_model->emp_list();
				$this->load->view('work/add',$data);
				$this->load->view('admin/footer');
			}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
	}public function lists()
	{	
		if($this->session->userdata('hms_details'))
			{
				$l_data=$this->session->userdata('hms_details');
				$data['w_list']=$this->Work_model->emp_work_list($l_data['a_id']);
				//echo '<pre>';print_r($data);exit;
				$this->load->view('work/emplist',$data);
				$this->load->view('admin/footer');
			}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
	}
	public function view()
	{	
		if($this->session->userdata('hms_details'))
			{
				$l_data=$this->session->userdata('hms_details');
				$aid=base64_decode($this->uri->segment(3));
				$data['a_w_id']=$aid;
				$data['w_d']=$this->Work_model->view_work_details($aid);
				$data['w_c_list']=$this->Work_model->view_work_comment($aid);
				//echo $this->db->last_query();
				//echo '<pre>';print_r($data);exit;
				$this->load->view('work/view',$data);
				$this->load->view('admin/footer');
			}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
	}
	
	public  function addpost(){
		if($this->session->userdata('hms_details'))
			{
			$l_data=$this->session->userdata('hms_details');
			$post=$this->input->post();
			//echo '<pre>';print_r($post);exit;
			$fd=date("Y-m-d", strtotime($post['from_date']));
			$td=date("Y-m-d", strtotime($post['to_date']));
			$datetime1 = new DateTime($fd);
			$datetime2 = new DateTime($td);
			$difference = $datetime1->diff($datetime2);
			$tdays=$difference->d;
			$holidayslist=$this->Leaves_model->get_holidays_list();
			if(isset($holidayslist) && count($holidayslist)>0){
				foreach($holidayslist as $hls){
					$holidays[]=date("Y-m-d", strtotime($hls['date']));
				}
			}else{
				$holidays=array();
			}
			//echo '<pre>';print_r($post);exit;
			
			
			$start = new DateTime($fd);
			$end = new DateTime($td);
			$end->modify('+1 day');
			$interval = $end->diff($start);
			$days = $interval->days;
			$period = new DatePeriod($start, new DateInterval('P1D'), $end);
			foreach($period as $dt) {
				$curr = $dt->format('D');

				if ($curr == 'Sat' || $curr == 'Sun') {
					$days--;
				}

				elseif (in_array($dt->format('Y-m-d'), $holidays)) {
					$days--;
				}
			}
			foreach($post['emp_id'] as $li){
					if($li!=''){
					$add=array(
						'from_date'=>isset($post['from_date'])?$post['from_date']:'',
						'to_date'=>isset($post['to_date'])?$post['to_date']:'',
						'prioritization'=>isset($post['prioritization'])?$post['prioritization']:'',
						'total_day'=>isset($days)?$days:'',
						'emp_id'=>isset($li)?$li:'',
						'message'=>isset($post['message'])?$post['message']:'',
						'created_at'=>date('Y-m-d H:i:s'),
						'created_by'=>isset($l_data['a_id'])?$l_data['a_id']:'',
						);
					//echo '<pre>';print_r($add);exit;
					$save=$this->Work_model->save_work($add);
					}
				}
				if(count($save)>0){
					$this->session->set_flashdata('success',"Task added successfully");	
					redirect('assignwork');
				}else{
					$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
					redirect('assignwork/add');
				}
				//echo '<pre>';print_r($post);exit;
			}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
	}
	public  function status(){
		if($this->session->userdata('hms_details'))
		{
			$id=base64_decode($this->uri->segment(3));
			$statu=base64_decode($this->uri->segment(4));
			$u_d=array(
			 'status'=>$statu,
			 'updated_at'=>date('Y-m-d H:i:s')
			);
			$update=$this->Work_model->work_update($id,$u_d);
			if(count($update)>0){
				if($statu==1){
					$this->session->set_flashdata('success',"Task set as Pending successfully");
				}else if($statu==2){
					$this->session->set_flashdata('success',"Task set as Completed successfully");
				}else if($statu==3){
					$this->session->set_flashdata('success',"Task set as reject successfully");
				}
				redirect('assignwork/lists');
			}else{
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('assignwork/lists');
			}
		}else{
			$this->session->set_flashdata('error','Please login to continue');
			redirect('admin');
		}
	}
	public  function workcommentpost(){
		if($this->session->userdata('hms_details'))
		{
			$l_data=$this->session->userdata('hms_details');
			$post=$this->input->post();
			$cd=array(
			 'a_w_id'=>isset($post['a_w_id'])?$post['a_w_id']:'',
			 'commet'=>isset($post['commet'])?$post['commet']:'',
			 'created_at'=>date('Y-m-d h:i:s'),
			 'created_by'=>isset($l_data['a_id'])?$l_data['a_id']:'',
			);
			//echo '<pre>';print_r($cd);exit;
			$save=$this->Work_model->save_work_comments($cd);
			if(count($save)>0){
				$this->session->set_flashdata('success',"Work comment sent successfully");
				redirect('assignwork/lists');
			}else{
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('assignwork/lists');
			}
		}else{
			$this->session->set_flashdata('error','Please login to continue');
			redirect('admin');
		}
	}
	
	
	
}
