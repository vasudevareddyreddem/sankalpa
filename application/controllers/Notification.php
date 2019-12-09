<?php
defined('BASEPATH') OR exit('No direct script access allowed');
@include_once( APPPATH . 'controllers/Sidebar.php');

class Notification extends sidebar {
	public function __construct() {
        parent::__construct();
        $this->load->model('Notification_model');
    	
    }
    public function index(){
		if($this->session->userdata('hms_details'))
		{
			$l_data=$this->session->userdata('hms_details');
			$data['n_list']=$this->Notification_model->get_noti_list($l_data['a_id']);
			$this->load->view('notification/list',$data);
			$this->load->view('admin/footer');
		}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
    } 
	public function add(){
		if($this->session->userdata('hms_details'))
		{
			$l_data=$this->session->userdata('hms_details');
			$this->load->view('notification/add');
			$this->load->view('admin/footer');
		}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
    }
	public function edit(){
		if($this->session->userdata('hms_details'))
		{
			$l_data=$this->session->userdata('hms_details');
			$data['n_d']=$this->Notification_model->get_noti_details(base64_decode($this->uri->segment(3)));
			$this->load->view('notification/edit',$data);
			$this->load->view('admin/footer');
		}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
    } 
	public function all(){
		if($this->session->userdata('hms_details'))
		{
			$l_data=$this->session->userdata('hms_details');
			$data['notification']=$this->Notification_model->get_all_notifications($l_data['a_id']);
			$this->load->view('notification/viewall',$data);
			$this->load->view('admin/footer');
		}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
    }    
    public function addpost(){
		if($this->session->userdata('hms_details'))
		{
			$l_data=$this->session->userdata('hms_details');
			$post=$this->input->post();
			
			$add=array(
			'title'=>isset($post['title'])?$post['title']:'',
			'message'=>isset($post['msg'])?$post['msg']:'',
			'created_at'=>date('Y-m-d H:i;s'),
			'created_by'=>isset($l_data['a_id'])?$l_data['a_id']:'',
			);
			$save=$this->Notification_model->save($add);
			if(count($save)>0){
				$this->session->set_flashdata('success',"Notification added successfully");
				redirect('notification');
			}else{
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('notification/add');
			}
		}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
	}
	public function editpost(){
		if($this->session->userdata('hms_details'))
		{
			$post=$this->input->post();
			$add=array(
			'title'=>isset($post['title'])?$post['title']:'',
			'message'=>isset($post['msg'])?$post['msg']:'',
			'updated_at'=>date('Y-m-d H:i;s'),
			);
			$save=$this->Notification_model->update($post['n_id'],$add);
			if(count($save)>0){
				$this->session->set_flashdata('success',"Banner updated successfully");
				redirect('notification');
			}else{
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('notification/edit/'.base64_encode($post['n_id']));
			}
		}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
	}
	public  function status(){
			$b_id=base64_decode($this->uri->segment(3));
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
			$update=$this->Notification_model->update($b_id,$u_data);
			if(count($update)>0){
				if($statu==0){
					$this->session->set_flashdata('success',"Notification activated successfully");
				}else{
					$this->session->set_flashdata('success',"Notification deactivated successfully");
				}
				redirect('notification');
			}else{
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('notification');
			}
		
	}
	public  function delete(){
			$b_id=base64_decode($this->uri->segment(3));
			$u_data=array(
			'status'=>2,
			'updated_at'=>date('Y-m-d H:i:s')
			);
			$update=$this->Notification_model->update($b_id,$u_data);
			if(count($update)>0){$this->session->set_flashdata('success',"Notification deleted successfully");
				redirect('notification');
			}else{
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('notification');
			}
		
	}
	
	public  function send(){
		if($this->session->userdata('hms_details'))
		{
			$l_data=$this->session->userdata('hms_details');
			$n_id=base64_decode($this->uri->segment(3));
			if($n_id==''){
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('notification');
			}
			$emp_list=$this->Notification_model->get_all_emp_list();
			$noti=$this->Notification_model->get_noti_details($n_id);
			if(isset($emp_list) && count($emp_list)>0){
				foreach($emp_list as $li){
					$a_n=array(
					'a_id'=>isset($li['a_id'])?$li['a_id']:'',
					'msg'=>isset($noti['message'])?$noti['message']:'',
					'title'=>isset($noti['title'])?$noti['title']:'',
					'created_at'=>date('Y-m-d H:i:s'),
					'created_by'=>isset($l_data['a_id'])?$l_data['a_id']:'',
					);
					//echo '<pre>';print_r($a_n);exit;
					$save=$this->Notification_model->save_emp_notification($a_n);
					//echo $this->db->last_query();exit;
				}
					$this->session->set_flashdata('success',"Notification sent successfully");
					redirect('notification');
				
				
			}
			
		}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
	}
	
	public  function change_notification_read(){
		if($this->session->userdata('hms_details'))
		{
			$l_data=$this->session->userdata('hms_details');
			$post=$this->input->post();
			$a_d=array('read'=>1);
			$update=$this->Notification_model->update_notification_model($post['aid'],$a_d);
			if(count($update)>0){
				$data['msg']=1;
				echo json_encode($data);exit;
			}else{
				$data['msg']=0;
				echo json_encode($data);exit;
			}
			
		}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
	}
    
    

}