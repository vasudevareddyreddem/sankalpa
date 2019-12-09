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
				//echo $this->db->last_query();exit;
				$this->load->view('work/emplist',$data);
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
			//echo '<pre>';print_r($holidays);exit;
			
			
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
			$add=array(
					'from_date'=>isset($post['from_date'])?$post['from_date']:'',
					'to_date'=>isset($post['to_date'])?$post['to_date']:'',
					'total_day'=>isset($days)?$days:'',
					'emp_id'=>isset($post['emp_id'])?$post['emp_id']:'',
					'message'=>isset($post['message'])?$post['message']:'',
					'created_at'=>date('Y-m-d H:i:s'),
					'created_by'=>isset($l_data['a_id'])?$l_data['a_id']:'',
					);
				//echo '<pre>';print_r($add);exit;
				$save=$this->Work_model->save_work($add);
				if(count($save)>0){
					$this->session->set_flashdata('success',"Assignwork added successfully");	
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
	public  function adminaddpost(){
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
			$lcheck=$this->Leaves_model->emp_leave_count($post['a_id']);
			$leave_data=$this->Leaves_model->get_leaves_count();
			$holidayslist=$this->Leaves_model->get_holidays_list();
			if(isset($holidayslist) && count($holidayslist)>0){
				foreach($holidayslist as $hls){
					$holidays[]=date("Y-m-d", strtotime($hls['date']));
				}
			}else{
				$holidays=array();
			}
			//echo '<pre>';print_r($holidays);exit;
			
			
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
			$add=array(
					'from_date'=>isset($post['from_date'])?$post['from_date']:'',
					'to_date'=>isset($post['to_date'])?$post['to_date']:'',
					'total_day'=>isset($days)?$days:'',
					'l_type'=>isset($post['l_type'])?$post['l_type']:'',
					'message'=>isset($post['message'])?$post['message']:'',
					'created_at'=>date('Y-M-d H:i:s'),
					'a_id'=>isset($post['a_id'])?$post['a_id']:'',
					'created_by'=>isset($l_data['a_id'])?$l_data['a_id']:'',
					);
				//echo '<pre>';print_r($add);exit;
				$save=$this->Leaves_model->save($add);
				if(count($save)>0){
					$t_leave=(($leave_data['sick'])+($leave_data['causal']));
					
					//echo $t_leave;
					//echo $lcheck['lsum'];exit;
					if($lcheck['lsum'] > $t_leave){
						$this->session->set_flashdata('success',"Leave applyed successfully. It will consider as lop");
					}else{
						$this->session->set_flashdata('success',"Leave applyed successfully");	
					}
					
					redirect('leaves');
				}else{
					$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
					redirect('leaves/add');
				}
				//echo '<pre>';print_r($post);exit;
			}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
	}
	
	
	public  function approved(){
		if($this->session->userdata('hms_details'))
		{
			$l_data=$this->session->userdata('hms_details');
			$l_id=base64_decode($this->uri->segment(3));
			$u_data=array(
			'status'=>1,
			'updated_at'=>date('Y-m-d H:i:s'),
			'approvedby'=>isset($l_data['a_id'])?$l_data['a_id']:'',
			);
			//echo '<pre>';print_r($u_data);exit;
			$update=$this->Leaves_model->update($l_id,$u_data);
			if(count($update)>0){
				$this->session->set_flashdata('success',"leave approved successfully");
				redirect('leaves');
			}else{
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('leaves');
			}
		}else{
			$this->session->set_flashdata('error','Please login to continue');
			redirect('admin');
		}
	}
	public  function reject(){
		if($this->session->userdata('hms_details'))
		{
			$l_data=$this->session->userdata('hms_details');
			$post=$this->input->post();
			$l_id=base64_decode($post['lid']);
			$u_data=array(
			'status'=>2,
			'reason'=>isset($post['resson'])?$post['resson']:'',
			'updated_at'=>date('Y-m-d H:i:s'),
			'approvedby'=>isset($l_data['a_id'])?$l_data['a_id']:'',
			);
			//echo '<pre>';print_r($post);exit;
			$update=$this->Leaves_model->update($l_id,$u_data);
			if(count($update)>0){
				$this->session->set_flashdata('success',"leave rejected successfully");
				redirect('leaves');
			}else{
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('leaves');
			}
		}else{
			$this->session->set_flashdata('error','Please login to continue');
			redirect('admin');
		}
	}
	
	public  function status(){
		if($this->session->userdata('hms_details'))
		{
			$d_id=base64_decode($this->uri->segment(3));
			$statu=base64_decode($this->uri->segment(4));
			if($statu==1){
				$st=0;	
			}else{
				$st=1;
			}
			$u_data=array(
			'status'=>$st,
			'updated_at'=>date('Y-m-d H:i:s')
			);
			$update=$this->Leaves_model->update($d_id,$u_data);
			if(count($update)>0){
				if($statu=1){
					$this->session->set_flashdata('success',"Document activated successfully");
				}else{
					$this->session->set_flashdata('success',"Document deactivated successfully");
				}
				redirect('document');
			}else{
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('document');
			}
		}else{
			$this->session->set_flashdata('error','Please login to continue');
			redirect('admin');
		}
	}
	
	public  function delete(){
		if($this->session->userdata('hms_details'))
		{
			$l_id=base64_decode($this->uri->segment(3));
			$update=$this->Leaves_model->leave_delete($l_id);
			if(count($update)>0){
				$this->session->set_flashdata('success',"Leave deleted successfully");
				redirect('leaves');
			}else{
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('leaves');
			}
		}else{
			$this->session->set_flashdata('error','Please login to continue');
			redirect('admin');
		}
	}
	
}
