<?php
defined('BASEPATH') OR exit('No direct script access allowed');
@include_once( APPPATH . 'controllers/Sidebar.php');
require_once APPPATH."/third_party/PHPExcel/Classes/PHPExcel.php"; 
class Cron extends sidebar {
	public function __construct() 
	{
		parent::__construct();	
	
		$this->load->model('Work_model');
		$this->load->library('livemumtowordclsconvert');
		$this->load->library('excel');
	}
	public function index()
	{	
		if($this->session->userdata('hms_details'))
			{
				$this->excel->setActiveSheetIndex(0);
                //name the worksheet
                $this->excel->getActiveSheet()->setTitle('GST INVOICE LIST');
                //set cell A1 content with some text
                $this->excel->getActiveSheet()->setCellValue('A1', 'S.NO');
                $this->excel->getActiveSheet()->setCellValue('B1', 'EMPLOYEE NAME');
                $this->excel->getActiveSheet()->setCellValue('C1', 'FROM DATE');
                $this->excel->getActiveSheet()->setCellValue('D1', 'TO DATE');
                $this->excel->getActiveSheet()->setCellValue('E1', 'PRIORITIZATION');
                $this->excel->getActiveSheet()->setCellValue('F1', 'TOTAL DAYS');
                $this->excel->getActiveSheet()->setCellValue('G1', 'MESSAGE');
                $this->excel->getActiveSheet()->setCellValue('H1', 'STATUS');
                $this->excel->getActiveSheet()->setCellValue('I1', 'ASSIGN BY');
                 for($col = ord('A'); $col <= ord('C'); $col++){ //set column dimension $this->excel->getActiveSheet()->getColumnDimension(chr($col))->setAutoSize(true);
							 //change the font size
						$this->excel->getActiveSheet()->getStyle(chr($col))->getFont()->setSize(12);
						$this->excel->getActiveSheet()->getStyle(chr($col))->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
					}
                //retrive contries table data
				$post=$this->input->post();
				//echo '<pre>';print_r($post);
				$w_list=$this->Work_model->get_daily_emp_works_list();
				//echo $this->db->last_query();
				//echo '<pre>';print_r($w_list);exit;
				if(isset($w_list) && count($w_list)>0){
					$cnt_sno=1;foreach ($w_list as $row){
						if($row['status']==1){ 						
							$st= "In progress";
						}else if($row['status']==0){
							$st= "Pending";
						}else if($row['status']==1){
							$st= "In progress";
						}else if($row['status']==2){ 
							$st= "Completed"; 
						}else if($row['status']==3){ 
							$st= "Rejected";
						}
						//echo '<pre>';print_r($row);
						$data[$row['a_w_id']]['sno'] = $cnt_sno;
						$data[$row['a_w_id']]['name']= $row['name'];
						$data[$row['a_w_id']]['from_date']= $row['from_date'];
						$data[$row['a_w_id']]['to_date']= $row['to_date'];
						$data[$row['a_w_id']]['prioritization']= $row['prioritization'];
						$data[$row['a_w_id']]['total_day']= $row['total_day'];
						$data[$row['a_w_id']]['message']= $row['message'];
						$data[$row['a_w_id']]['status']= $st;
						$data[$row['a_w_id']]['assignby']= $row['assignby'];
						
					$cnt_sno++;}
				}
				if(!empty($data)){
					$in_list=$data;	
				}else{
					$in_list=array('No data Available');
				}
				$exceldata="";
				foreach ($in_list as $row){
						$exceldata[] = $row;
				}
				//echo '<pre>';print_r($exceldata);exit;
               
                $this->excel->getActiveSheet()->fromArray($exceldata, null, 'A2');
                 
               // $d=
                $filename='Daily_work_sheet_list.xls'; //save our workbook as this file name
                header('Content-Type: application/vnd.ms-excel'); //mime type
                header('Content-Disposition: attachment;filename="'.$filename.'"'); //tell browser what's the file name
                header('Cache-Control: max-age=0'); //no cache
 
                //save it to Excel5 format (excel 2003 .XLS file), change this to 'Excel2007' (and adjust the filename extension, also the header mime type)
                //if you want to save it as .XLSX Excel 2007 format
                $objWriter = PHPExcel_IOFactory::createWriter($this->excel, 'Excel5');  
                //force user to download the Excel file without writing it to server's HD
				$excel_path='G:/xampp/htdocs/sankalpa/assets/'.$filename;
				//$sendmail=new ExcelMail($data);
				  $objWriter->save('php://output');
					$objWriter->save(str_replace(__FILE__,$excel_path,__FILE__));
					$send_email='vasudevareddy549@gmail.com';
					$this->load->library('email');
					$this->email->set_newline("\r\n");
					$this->email->from('admin@sankalpahospitals.in');
					$this->email->to($send_email);
					$this->email->subject(date('d-m-Y').'Daily work sheet');
					$this->email->message('Download daily work sheet : '.date('d-m-Y').' .Please find out below attachment');
					$this->email->attach($excel_path);
					$this->email->send();
				
				//exit;
				
					
			}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
	}
	
	
	
}
