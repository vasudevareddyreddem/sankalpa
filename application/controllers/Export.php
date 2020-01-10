<?php
defined('BASEPATH') OR exit('No direct script access allowed');
@include_once( APPPATH . 'controllers/Sidebar.php');
require_once APPPATH."/third_party/PHPExcel/Classes/PHPExcel.php"; 
class Export extends sidebar {
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
				$w_list=$this->Work_model->get_export_emp_works_list($post['emp_id'],$post['priority'],$post['from_date'],$post['to_date'],$post['stat']);
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
                 
                
                $filename='Employee_work_shhet_list.xls'; //save our workbook as this file name
                header('Content-Type: application/vnd.ms-excel'); //mime type
                header('Content-Disposition: attachment;filename="'.$filename.'"'); //tell browser what's the file name
                header('Cache-Control: max-age=0'); //no cache
 
                //save it to Excel5 format (excel 2003 .XLS file), change this to 'Excel2007' (and adjust the filename extension, also the header mime type)
                //if you want to save it as .XLSX Excel 2007 format
                $objWriter = PHPExcel_IOFactory::createWriter($this->excel, 'Excel5');  
                //force user to download the Excel file without writing it to server's HD
                $objWriter->save('php://output');
					
			}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
	}
	
	public  function feedbackexport(){
				$this->excel->setActiveSheetIndex(0);
                $this->excel->getActiveSheet()->setTitle('FEED BACK RATING LIST');
                $this->excel->getActiveSheet()->setCellValue('A3', 'S.NO');
                $this->excel->getActiveSheet()->setCellValue('B3', 'TYPE');
                $this->excel->getActiveSheet()->setCellValue('C3', 'NAME');
                $this->excel->getActiveSheet()->setCellValue('D3', 'MOBILE NUMBER');
                $this->excel->getActiveSheet()->setCellValue('E3', 'DEPARTMENT');
                $this->excel->getActiveSheet()->setCellValue('F3', 'TOWN');
                $this->excel->getActiveSheet()->setCellValue('G3', 'SOURCE');
                $this->excel->getActiveSheet()->setCellValue('H3', 'RATING');
                $this->excel->getActiveSheet()->setCellValue('I3', 'DATE');
                 for($col = ord('A'); $col <= ord('C'); $col++){
						$this->excel->getActiveSheet()->getStyle(chr($col))->getFont()->setSize(12);
						$this->excel->getActiveSheet()->getStyle(chr($col))->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
					}
				$post=$this->input->post();
				$w_list=$this->Work_model->get_feedback_list($post['from_date'],$post['to_date'],$post['type'],$post['depart'],$post['location'],$post['source']);
				//echo $this->db->last_query();
				//echo '<pre>';print_r($w_list);exit;
				if(isset($w_list) && count($w_list)>0){
					$dep_list=$loc_list=$sour_list=array();$opc=$ipc=1;$opd_vg=$ipd_avg=$opd_cnt=$ipd_cnt='';$cnt_sno=1;foreach ($w_list as $row){
						$data[$row['f_b_id']]['sno'] = $cnt_sno;
						$data[$row['f_b_id']]['type']= $row['type'];
						$data[$row['f_b_id']]['name']= $row['name'];
						$data[$row['f_b_id']]['phone_no']= $row['phone_no'];
						$data[$row['f_b_id']]['department']= $row['department'];
						$data[$row['f_b_id']]['location']= $row['location'];
						$data[$row['f_b_id']]['source']= $row['source'];
						$data[$row['f_b_id']]['rat']= $row['q_percent'].' ( '.$row['q_rating'].' )';
						$data[$row['f_b_id']]['date']= $row['date'];
						if($row['type']=='IPD'){
							$ipd_cnt +=$opc;
							$ipd_avg +=$row['q_percent'];
						}else{
							$opd_cnt +=$ipc;
							$opd_vg +=$row['q_percent'];
						}
						$dep_list[]=$row['department'];
						$loc_list[]=$row['location'];
						$sour_list[]=$row['source'];						
					$cnt_sno++;}
				}else{
					$ipd_cnt=0;$ipd_avg=0;$opd_cnt=0;$opd_vg=0;
				}
				
				if( isset($dep_list) && count($dep_list)>0){
					$dt=array_unique($dep_list);
					foreach($dt as $l){
						$d_cnt=$this->Work_model->get_dep_feedback_list($post['from_date'],$post['to_date'],$post['type'],$l,$post['location'],$post['source']);
						$depat_wise_cnt[]=($l.' : '.$d_cnt['cnt']);
						$dep_d=implode(" , ",$depat_wise_cnt);
					}
				}
				if( isset($loc_list) && count($loc_list)>0){
					$lt=array_unique($loc_list);
					foreach($lt as $l){
						$l_cnt=$this->Work_model->get_dep_feedback_list($post['from_date'],$post['to_date'],$post['type'],$post['depart'],$l,$post['source']);
						$location_wise_cnt[]=($l.' : '.$l_cnt['cnt']);
					}
					$loc_d=implode(" , ",$location_wise_cnt);
				}
				if( isset($sour_list) && count($sour_list)>0){
					$st=array_unique($sour_list);
					foreach($st as $l){
						$s_cnt=$this->Work_model->get_dep_feedback_list($post['from_date'],$post['to_date'],$post['type'],$post['depart'],$post['location'],$l);
						$sou_wise_cnt[]=($l.' : '.$s_cnt['cnt']);
					}
					$sou_d=implode(" , ",$sou_wise_cnt);
				}
				if(!empty($data)){
					$in_list=$data;	
				}else{
					$in_list=array('No data Available');
				}
				
				if( isset($opd_cnt) && $opd_cnt!=0 && $opd_cnt!=''){
					$opd_avg=((($opd_vg)/(($opd_cnt)*5))*5);
				}else{
					$opd_avg=0;
				}
				if(isset($ipd_cnt) && $ipd_cnt!=0 && $ipd_cnt!=''){
					$ipd_avg_val=((($ipd_avg)/(($ipd_cnt)*5))*5);
					
				}else{
					$ipd_avg_val=0;
				}
				$st="";
				$coist='';
				$p=round($opd_avg);
				if($p==1){
					$st="Poor";
					$coist='4f81bc';
				}else if($p==2){
					$st="Average";
					$coist='c0504e';
				}else if($p==3){
					$st="Good";
					$coist='9bbb58';
				}else if($p==4){
					$st="Very good";
					$coist='23bfaa';
				}else if($p==5){
					$st="Excellent";
					$coist='8064a1';
				}else if($p==0){
					$st="";
					$coist='';
				}
				
				$ist="";
				$cpist='';
				$ip=round($ipd_avg_val);
				if($ip==1){
					$ist="Poor";
					$cpist='4f81bc';
				}else if($ip==2){
					$ist="Average";
					$cpist='c0504e';
				}else if($ip==3){
					$ist="Good";
					$cpist='9bbb58';
				}else if($ip==4){
					$ist="Very good";
					$cpist='23bfaa';
				}else if($ip==5){
					$ist="Excellent";
					$cpist='8064a1';
				}else if($ip==0){
					$ist="";
					$cpist='';
				}
				$exceldata="";
				foreach ($in_list as $rows){
						$exceldata[] = $rows;
				}
				//echo '<pre>';print_r($exceldata);exit;
				
				 $this->excel->getActiveSheet()->setCellValue('A1', '');
                $this->excel->getActiveSheet()->setCellValue('B1', 'OVERALL OPD RATING');
				if($opd_avg!='' && $opd_avg!=0){
					$this->excel->getActiveSheet()->setCellValue('C1', ($opd_avg));
				}else{
					$this->excel->getActiveSheet()->setCellValue('C1', 0);
				}
                $this->excel->getActiveSheet()->setCellValue('D1', 'OVERALL IPD RATING');
				if($opd_avg!='' && $opd_avg!=0){
					$this->excel->getActiveSheet()->setCellValue('E1', ($ipd_avg_val));
				}else{
					$this->excel->getActiveSheet()->setCellValue('E1', 0);
				}
                $this->excel->getActiveSheet()->setCellValue('F1', '');
                $this->excel->getActiveSheet()->setCellValue('G1', '');
                $this->excel->getActiveSheet()->setCellValue('H1', '');
                $this->excel->getActiveSheet()->setCellValue('I1', '');
				/*paramets wise data */
				$this->excel->getActiveSheet()->setCellValue('A2', '');
                $this->excel->getActiveSheet()->setCellValue('B2', '');
                $this->excel->getActiveSheet()->setCellValue('C2', '');
                $this->excel->getActiveSheet()->setCellValue('D2', '');
                $this->excel->getActiveSheet()->setCellValue('E2', isset($dep_d)?$dep_d:'');
                $this->excel->getActiveSheet()->setCellValue('F2',isset($loc_d)?$loc_d:'');
                $this->excel->getActiveSheet()->setCellValue('G2', isset($sou_d)?$sou_d:'');
                $this->excel->getActiveSheet()->setCellValue('H2', '');
                $this->excel->getActiveSheet()->setCellValue('I2', '');
				/*paramets wise data */
				
				$this->excel->getActiveSheet()->getStyle('B1')->getFont()->getColor()->setARGB($coist);
				$this->excel->getActiveSheet()->getStyle('D1')->getFont()->getColor()->setARGB($cpist);
                $this->excel->getActiveSheet()->fromArray($exceldata, null, 'A4');                
                $filename='user_Feedback_rating_list.xls'; //save our workbook as this file name
                header('Content-Type: application/vnd.ms-excel'); //mime type
                header('Content-Disposition: attachment;filename="'.$filename.'"'); //tell browser what's the file name
                header('Cache-Control: max-age=0'); //no cache
				   $objWriter = PHPExcel_IOFactory::createWriter($this->excel, 'Excel5');  
                //force user to download the Excel file without writing it to server's HD
                $objWriter->save('php://output');
		
	}
	public function emp_work()
	{	
		if($this->session->userdata('hms_details'))
			{
				$l_d=$this->session->userdata('hms_details');
				$this->excel->setActiveSheetIndex(0);
                //name the worksheet
                $this->excel->getActiveSheet()->setTitle('GST INVOICE LIST');
                //set cell A1 content with some text
                $this->excel->getActiveSheet()->setCellValue('A1', 'S.NO');
                $this->excel->getActiveSheet()->setCellValue('B1', 'FROM DATE');
                $this->excel->getActiveSheet()->setCellValue('C1', 'TO DATE');
                $this->excel->getActiveSheet()->setCellValue('D1', 'PRIORITIZATION');
                $this->excel->getActiveSheet()->setCellValue('E1', 'TOTAL DAYS');
                $this->excel->getActiveSheet()->setCellValue('F1', 'MESSAGE');
                $this->excel->getActiveSheet()->setCellValue('G1', 'STATUS');
                $this->excel->getActiveSheet()->setCellValue('H1', 'ASSIGN BY');
                 for($col = ord('A'); $col <= ord('C'); $col++){ //set column dimension $this->excel->getActiveSheet()->getColumnDimension(chr($col))->setAutoSize(true);
							 //change the font size
						$this->excel->getActiveSheet()->getStyle(chr($col))->getFont()->setSize(12);
						$this->excel->getActiveSheet()->getStyle(chr($col))->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
					}
                //retrive contries table data
				$post=$this->input->post();
				//echo '<pre>';print_r($post);
				$w_list=$this->Work_model->get_emp_works_list($l_d['a_id'],$post['priority'],$post['from_date'],$post['to_date'],$post['stat']);
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
						//$data[$row['a_w_id']]['name']= $row['name'];
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
                 
                
                $filename=$l_d['a_id'].'_'.$post['priority'].'_work_shhet_list.xls'; //save our workbook as this file name
                header('Content-Type: application/vnd.ms-excel'); //mime type
                header('Content-Disposition: attachment;filename="'.$filename.'"'); //tell browser what's the file name
                header('Cache-Control: max-age=0'); //no cache
 
                //save it to Excel5 format (excel 2003 .XLS file), change this to 'Excel2007' (and adjust the filename extension, also the header mime type)
                //if you want to save it as .XLSX Excel 2007 format
                $objWriter = PHPExcel_IOFactory::createWriter($this->excel, 'Excel5');  
                //force user to download the Excel file without writing it to server's HD
                $objWriter->save('php://output');
					
			}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
	}
	
	
}
