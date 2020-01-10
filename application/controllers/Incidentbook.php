<?php
defined('BASEPATH') OR exit('No direct script access allowed');
@include_once( APPPATH . 'controllers/Sidebar.php');
class Incidentbook extends sidebar {
	public function __construct() 
	{
		parent::__construct();	
	
		$this->load->model('Incidentbook_model');
	}
	public function index()
	{	
		if($this->session->userdata('hms_details'))
			{
				$l_data=$this->session->userdata('hms_details');
				$data['in_list']=$this->Incidentbook_model->get_book_list($l_data['a_id']);
				$this->load->view('incidentbook/list',$data);
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
				$this->load->view('incidentbook/add');
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
				$data['w_list']=$this->Incidentbook_model->emp_work_list($l_data['a_id']);
				//echo '<pre>';print_r($data);exit;
				$this->load->view('incidentbook/emplist',$data);
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
				$data['w_d']=$this->Incidentbook_model->view_work_details($aid);
				$data['w_c_list']=$this->Incidentbook_model->view_work_comment($aid);
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
				if(isset($_FILES['image']['name']) && $_FILES['image']['name']!=''){
					$temp = explode(".", $_FILES["image"]["name"]);
					$img = round(microtime(true)) . '.' . end($temp);
					move_uploaded_file($_FILES['image']['tmp_name'], "assets/incidentbook/".$img);
				}
				$add=array(
				'name'=>isset($post['name'])?$post['name']:'',
				'd_time'=>isset($post['d_time'])?$post['d_time']:'',
				'incident'=>isset($post['incident'])?$post['incident']:'',
				'staff_nurse'=>isset($post['staff_nurse'])?$post['staff_nurse']:'',
				'image'=>isset($img)?$img:'',
				'created_at'=>date('Y-m-d h:i:s'),
				'created_by'=>isset($l_data['a_id'])?$l_data['a_id']:'',
				);
				$save=$this->Incidentbook_model->save_book($add);
				if(count($save)>0){
					$this->session->set_flashdata('success',"Incident book added successfully");	
					redirect('incidentbook');
				}else{
					$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
					redirect('incidentbook/add');
				}
				
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
			$update=$this->Incidentbook_model->work_update($id,$u_d);
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
			$save=$this->Incidentbook_model->save_work_comments($cd);
			if(count($save)>0){
				$this->session->set_flashdata('success',"Work comment sent successfully");
				redirect('assignwork/view/'.base64_encode($post['a_w_id']));
			}else{
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('assignwork/view/'.base64_encode($post['a_w_id']));
			}
		}else{
			$this->session->set_flashdata('error','Please login to continue');
			redirect('admin');
		}
	}
	
	
	
}
