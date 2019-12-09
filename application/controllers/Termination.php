<?php
defined('BASEPATH') OR exit('No direct script access allowed');
@include_once( APPPATH . 'controllers/Sidebar.php');

class Termination extends sidebar {
	public function __construct() 
	{
		parent::__construct();	
	
		$this->load->model('Leaves_model');
	}
	public function index()
	{	
		if($this->session->userdata('hms_details'))
			{
				$l_data=$this->session->userdata('hms_details');
				$data['emp_list']=$this->Leaves_model->emp_list();
				$this->load->view('resignation/terminationadd',$data);
				$this->load->view('admin/footer');
			}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
	}
	public function lists()
	{	
		if($this->session->userdata('hms_details'))
			{
				$l_data=$this->session->userdata('hms_details');
					$data['t_list']=$this->Leaves_model->get_termination_emp_list();
					//echo '<pre>';print_r($data);exit;
					$this->load->view('resignation/terminationlist',$data);
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
			//echo '<pre>';print_r($_FILES);
			//echo '<pre>';print_r($l_data);exit;
				if(isset($_FILES["image1"]["name"]) && $_FILES["image1"]["name"]!=''){
						$temp = explode(".", $_FILES["image1"]["name"]);
						$orgimg =$_FILES["image1"]["name"];
						$image1 =round(microtime(true)) . '.' . end($temp);
						move_uploaded_file($_FILES['image1']['tmp_name'], "assets/termination/" . $image1);
					}
					if(isset($_FILES["image2"]["name"]) && $_FILES["image2"]["name"]!=''){
						$temp = explode(".", $_FILES["image2"]["name"]);
						$orgimg =$_FILES["image2"]["name"];
						$image2 =round(microtime(true)) . '.' . end($temp);
						move_uploaded_file($_FILES['image2']['tmp_name'], "assets/termination/" . $image2);
					}
					if(isset($_FILES["image3"]["name"]) && $_FILES["image3"]["name"]!=''){
						$temp = explode(".", $_FILES["image3"]["name"]);
						$orgimg =$_FILES["image3"]["name"];
						$image3 =round(microtime(true)) . '.' . end($temp);
						move_uploaded_file($_FILES['image3']['tmp_name'], "assets/termination/" . $image3);
					}
				$add=array(
					'emp_id'=>isset($post['emp_id'])?$post['emp_id']:'',
					'comment'=>isset($post['comment'])?$post['comment']:'',
					'document'=>isset($image1)?$image1:'',
					'document2'=>isset($image2)?$image2:'',
					'document3'=>isset($image3)?$image3:'',
					'created_at'=>date('Y-m-d H:i:s'),
					'created_by'=>isset($l_data['a_id'])?$l_data['a_id']:'',
					);
				$save=$this->Leaves_model->save_termination($add);
				if(count($save)>0){
					$pdfFilePath1 = $path."/assets/termination/".$image1;
					$pdfFilePath2 = $path."/assets/termination/".$image2;
					$pdfFilePath3 = $path."/assets/termination/".$image3;
					$emp_d=$this->Leaves_model->get_emp_details($post['emp_id']);
					
					$this->load->library('email');
					$this->email->set_newline("\r\n");
					$this->email->from($l_data['email']);
					$this->email->to($emp_d['email']);
					$this->email->subject('Termination Letter');
					$this->email->message(' '.$post['comment'].' .Please find out below attachment');
					$this->email->attach($pdfFilePath1);
					$this->email->attach($pdfFilePath2);
					$this->email->attach($pdfFilePath3);
					$this->email->send();
					$udd=array('status'=>2,'updated_at'=>date('Y-m-d H:i:s'));
					$this->Leaves_model->update_employee($emp_d['a_id'],$udd);
					$this->session->set_flashdata('success',"Termination successfully completed");
					redirect('termination/lists');
				}else{
					$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
					redirect('termination');
				}
			}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
	}
	
	public  function delete(){
		if($this->session->userdata('hms_details'))
		{
			$l_data=$this->session->userdata('hms_details');
			$l_id=base64_decode($this->uri->segment(3));
			$u_data=array(
			'status'=>3,
			'updated_at'=>date('Y-m-d H:i:s'),
			);
			//echo '<pre>';print_r($post);exit;
			$update=$this->Leaves_model->update_resignation($l_id,$u_data);
			if(count($update)>0){
				$this->session->set_flashdata('success',"resignation deleted successfully");
				redirect('resignation/lists');
			}else{
				$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
				redirect('resignation/lists');
			}
		}else{
			$this->session->set_flashdata('error','Please login to continue');
			redirect('admin');
		}
	}
	public  function updatepost(){
		if($this->session->userdata('hms_details'))
			{
			$l_data=$this->session->userdata('hms_details');
			$post=$this->input->post();
			if(isset($post['type']) && $post['type']=='with notice period'){
				$effectiveDate=date('Y-m-d');
				$mont="+".$post['n_p_months']." months";
				$l_date = date('Y-m-d', strtotime($mont, strtotime($effectiveDate)));
			}else{
				$l_date = date('Y-m-d', strtotime($post['final_date']));
			}
				$u_d=array(
					'status'=>isset($post['stat'])?$post['stat']:'',
					'comment'=>isset($post['comment'])?$post['comment']:'',
					'last_date'=>isset($l_date)?$l_date:'',
					'updated_at'=>date('Y-m-d H:i:s'),
					'updated_by'=>isset($l_data['a_id'])?$l_data['a_id']:'',
					);
				//echo '<pre>';print_r($add);exit;
				$update=$this->Leaves_model->update_resignation($post['r_id'],$u_d);
				if(count($update)>0){
					$this->session->set_flashdata('success',"Resignation updated successfully");
					redirect('resignation/lists');
				}else{
					$this->session->set_flashdata('error',"Technical problem will occured. Please try again");
					redirect('resignation/approvestatus/'.base64_encode($post['r_id']));
				}
			}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
	}
	
}
