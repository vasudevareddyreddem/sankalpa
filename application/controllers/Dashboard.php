<?php
defined('BASEPATH') OR exit('No direct script access allowed');
@include_once( APPPATH . 'controllers/Sidebar.php');

class Dashboard extends sidebar {
	public function __construct() 
	{
		parent::__construct();
		$this->load->model('Dashboard_model');
		$this->load->model('Feedback_model');
	}
	public function index()
	{	
		if($this->session->userdata('hms_details'))
		{
			$l_d=$this->session->userdata('hms_details');
			//echo '<pre>';print_r($l_d);exit; 
			$data['emp_l']=$this->Dashboard_model->get_emp_list();
			$post=$this->input->post();
			if(isset($post['tab_id']) && $post['tab_id']!=''){
				$data['tab_id']=$post['tab_id'];
			}else{
				$data['tab_id']=1;
			}
			//echo '<pre>';print_r($post);exit; 
			$w_e_n=isset($post['w_e_name'])?$post['w_e_name']:'';
			$w_p_y=isset($post['w_priority'])?$post['w_priority']:'';
			$w_st=isset($post['w_stat'])?$post['w_stat']:'';
			$data['e_w_p']=$post;	
			$data['incident_book']=$this->Dashboard_model->get_incident_book();	
			//echo '<pre>';print_r($data);exit; 			
			/* work */
			$data['high_com']=$this->Dashboard_model->get_work_high_compete('High',2,$w_e_n,$w_p_y,$w_st);
			$data['high_inp']=$this->Dashboard_model->get_work_high_compete('High',1,$w_e_n,$w_p_y,$w_st);;
			$data['high_pen']=$this->Dashboard_model->get_work_high_compete('High',0,$w_e_n,$w_p_y,$w_st);;
			
			$data['medi_com']=$this->Dashboard_model->get_work_high_compete('Medium',2,$w_e_n,$w_p_y,$w_st);
			$data['medi_inp']=$this->Dashboard_model->get_work_high_compete('Medium',1,$w_e_n,$w_p_y,$w_st);
			$data['medi_pen']=$this->Dashboard_model->get_work_high_compete('Medium',0,$w_e_n,$w_p_y,$w_st);
			
			$data['low_com']=$this->Dashboard_model->get_work_high_compete('Low',2,$w_e_n,$w_p_y,$w_st);
			$data['low_inp']=$this->Dashboard_model->get_work_high_compete('Low',1,$w_e_n,$w_p_y,$w_st);
			$data['low_pen']=$this->Dashboard_model->get_work_high_compete('Low',0,$w_e_n,$w_p_y,$w_st);
			//echo '<pre>';print_r($data);exit; 
			/* work */
			//echo '<pre>';print_r($data);exit;
			if(isset($post['from_date']) && $post['from_date']!=''){
				$fd=date("Y-m-d", strtotime($post['from_date']));
				$td=date("Y-m-d", strtotime($post['to_date']));
			}else{
				$fd='';
				$td='';
				
			}
			if(isset($post['pfrom_date']) && $post['pto_date']!=''){
				$pfd=date("Y-m-d", strtotime($post['pfrom_date']));
				$ptd=date("Y-m-d", strtotime($post['pto_date']));
				
			}else{
				$pfd='';
				$ptd='';
			}
			$dep=isset($post['department'])?$post['department']:'';
			$loc=isset($post['location'])?$post['location']:'';
			$sou=isset($post['source'])?$post['source']:'';
			$data['p_post']=$post;
			$data['d_list']=$this->Feedback_model->d_list();
			$data['l_list']=$this->Feedback_model->location_list();
			$data['s_list']=$this->Feedback_model->source_list();
			if( isset($post['d_l_s_dep']) && $post['d_l_s_dep']=='department'){
				foreach($data['d_list'] as $dli){
					$d_lis=$this->Dashboard_model->get_depart_wise_feed_list($dli['name'],$pfd,$ptd);
					$data['d_part_wise'][$dli['d_id']]=$dli;
					$data['d_part_wise'][$dli['d_id']]['d_cn']=$d_lis['cnt'];
				}
			}
			if( isset($post['d_l_s_dep']) && $post['d_l_s_dep']=='location'){
				foreach($data['l_list'] as $lli){
					$l_lis=$this->Dashboard_model->get_location_wise_feed_list($lli['name'],$pfd,$ptd);
					$data['loc_wise'][$lli['l_id']]=$lli;
					$data['loc_wise'][$lli['l_id']]['d_cn']=$l_lis['cnt'];
				}
			}
			if( isset($post['d_l_s_dep']) && $post['d_l_s_dep']=='Source'){
				foreach($data['s_list'] as $sli){
					$s_lis=$this->Dashboard_model->get_source_wise_feed_list($sli['name'],$pfd,$ptd);
					$data['sou_wise'][$sli['s_id']]=$sli;
					$data['sou_wise'][$sli['s_id']]['d_cn']=$s_lis['cnt'];
				}
			}
			//echo '<pre>';print_r($data);exit;
			$data['f_date']=isset($post['from_date'])?$post['from_date']:'';
			$data['t_date']=isset($post['to_date'])?$post['to_date']:'';
			$data['ptype']=isset($post['ptype'])?$post['ptype']:'';
			if($l_d['role_id']==2){
				
				//echo "aaa";exit;
				/* work */
				$edata['e_high_com']=$this->Dashboard_model->get_emp_work_high_compete('High',2,$l_d['a_id']);
				$edata['e_high_inp']=$this->Dashboard_model->get_emp_work_high_compete('High',1,$l_d['a_id']);
				$edata['e_high_pen']=$this->Dashboard_model->get_emp_work_high_compete('High',0,$l_d['a_id']);
				
				$edata['e_medi_com']=$this->Dashboard_model->get_emp_work_high_compete('Medium',2,$l_d['a_id']);
				$edata['e_medi_inp']=$this->Dashboard_model->get_emp_work_high_compete('Medium',1,$l_d['a_id']);
				$edata['e_medi_pen']=$this->Dashboard_model->get_emp_work_high_compete('Medium',0,$l_d['a_id']);
				
				$edata['e_low_com']=$this->Dashboard_model->get_emp_work_high_compete('Low',2,$l_d['a_id']);
				$edata['e_low_inp']=$this->Dashboard_model->get_emp_work_high_compete('Low',1,$l_d['a_id']);
				$edata['e_low_pen']=$this->Dashboard_model->get_emp_work_high_compete('Low',0,$l_d['a_id']);
				
				$this->load->view('admin/emp_dashboard',$edata);
				
			}else if($l_d['role_id']==1){
				$ptype=isset($post['ptype'])?$post['ptype']:'';
				//echo '<pre>';print_r($ptype);exit;
				$data['emp_act']=$this->Dashboard_model->get_accounts_count(2);
				$data['emp_present']=$this->Dashboard_model->get_present_absent_list(date('Y-m-d'));
				//echo '<pre>';print_r($data['emp_present']);
				//echo $this->db->last_query();exit;				
				$data['opd_very_Average']=$this->Dashboard_model->month_wise_op_data('Poor',$ptype,$pfd,$ptd);
				$data['opd_Average']=$this->Dashboard_model->month_wise_op_data('Average',$ptype,$pfd,$ptd);
				$data['opd_Good']=$this->Dashboard_model->month_wise_op_data('Good',$ptype,$pfd,$ptd);
				$data['opd_Very_good']=$this->Dashboard_model->month_wise_op_data('Very good',$ptype,$pfd,$ptd);
				$data['opd_excellent']=$this->Dashboard_model->month_wise_op_data('Excellent',$ptype,$pfd,$ptd);
				//echo $this->db->last_query();
				//echo '<pre>';print_r($data);exit;
				
				/* opd */
				$opd_vp_p=$this->Dashboard_model->get_opd_percentage('Poor',$fd,$td,$dep,$loc,$sou);
				//echo $this->db->last_query();exit;
				$opd_p_p=$this->Dashboard_model->get_opd_percentage('Average',$fd,$td,$dep,$loc,$sou);
				$opd_p_g=$this->Dashboard_model->get_opd_percentage('Very good',$fd,$td,$dep,$loc,$sou);
				$opd_a_p=$this->Dashboard_model->get_opd_percentage('Good',$fd,$td,$dep,$loc,$sou);
				$opd_e_p=$this->Dashboard_model->get_opd_percentage('Excellent',$fd,$td,$dep,$loc,$sou);
				$data['opd_vp_p_cnt']=$opd_vp_p['cnt'];
				$data['opd_p_p_cnt']=$opd_p_p['cnt'];
				$data['opd_a_p_cnt']=$opd_a_p['cnt'];
				$data['opd_p_g_cnt']=$opd_p_g['cnt'];
				$data['opd_e_p_cnt']=$opd_e_p['cnt'];	
				//echo '<pre>';print_r($opd_p_p);exit;				
				$per_tal=$this->Dashboard_model->get_all_opd_tatol('OPD',$fd,$td,$dep,$loc,$sou);
				$data['opd_q_c']=isset($per_tal['cnt'])?$per_tal['cnt']:'';
				if($per_tal['cnt']!=0){
				$data['opd_vp_p'] =((($opd_vp_p['cnt'])/($per_tal['cnt']))*100);
				$data['opd_p_p'] = ((($opd_p_p['cnt'])/($per_tal['cnt'])) * 100);
				$data['opd_p_g'] = ((($opd_p_g['cnt'])/($per_tal['cnt'])) * 100);
				$data['opd_a_p'] = ((($opd_a_p['cnt'])/($per_tal['cnt'])) * 100);
				$data['opd_e_p'] = ((($opd_e_p['cnt'])/($per_tal['cnt'])) * 100);
				}else{
				$data['opd_vp_p']=$data['opd_p_p']=$data['opd_p_g']=$data['opd_a_p']=$data['opd_e_p']=0;	
				}
				//echo '<pre>';print_r($data);exit;
				/* ipd */
				$ipd_vp_p=$this->Dashboard_model->get_ipd_percentage('Poor',$fd,$td,$dep,$loc,$sou);
				$ipd_p_p=$this->Dashboard_model->get_ipd_percentage('Average',$fd,$td,$dep,$loc,$sou);
				$ipd_p_g=$this->Dashboard_model->get_ipd_percentage('Very good',$fd,$td,$dep,$loc,$sou);
				$ipd_a_p=$this->Dashboard_model->get_ipd_percentage('Good',$fd,$td,$dep,$loc,$sou);
				$ipd_e_p=$this->Dashboard_model->get_ipd_percentage('Excellent',$fd,$td,$dep,$loc,$sou);
				$iper_tal=$this->Dashboard_model->get_all_ipd_tatol('IPD',$fd,$td,$dep,$loc,$sou);
				$data['ipd_vp_p_cnt']=$ipd_vp_p['cnt'];
				$data['ipd_p_p_cnt']=$ipd_p_p['cnt'];
				$data['ipd_p_g_cnt']=$ipd_p_g['cnt'];
				$data['ipd_a_p_cnt']=$ipd_a_p['cnt'];
				$data['ipd_e_p_cnt']=$ipd_e_p['cnt'];
				$data['ipd_q_c']=isset($iper_tal['cnt'])?$iper_tal['cnt']:'';
				if($iper_tal['cnt']!=0){
					$data['ipd_vp_p'] =((($ipd_vp_p['cnt'])/($iper_tal['cnt']))*100);
					$data['ipd_p_p'] = ((($ipd_p_p['cnt'])/($iper_tal['cnt'])) * 100);
					$data['ipd_p_g'] = ((($ipd_p_g['cnt'])/($iper_tal['cnt'])) * 100);
					$data['ipd_a_p'] = ((($ipd_a_p['cnt'])/($iper_tal['cnt'])) * 100);
					$data['ipd_e_p'] = ((($ipd_e_p['cnt'])/($iper_tal['cnt'])) * 100);
				}else{
					$data['ipd_vp_p']=$data['ipd_p_p']=$data['ipd_p_g']=$data['ipd_a_p']=$data['ipd_e_p']=0;
				}
				//echo '<pre>';print_r($iper_tal);exit;
				
				
				/* opd question */
				$opid=$this->Dashboard_model->get_all_questions('OPD',$fd,$td);
				foreach($opid as $oli){
					$q_tl=$this->Dashboard_model->get_question_taotal($oli['q_id'],$fd,$td,$dep,$loc,$sou);
					//echo '<pre>';print_r($q_tl);exit;
					$q_vp_p=$this->Dashboard_model->get_qeu_percentage($oli['q_id'],'Poor',$fd,$td,$dep,$loc,$sou);
					$q_p_p=$this->Dashboard_model->get_qeu_percentage($oli['q_id'],'Average',$fd,$td,$dep,$loc,$sou);
					$q_p_g=$this->Dashboard_model->get_qeu_percentage($oli['q_id'],'Very good',$fd,$td,$dep,$loc,$sou);
					$q_a_p=$this->Dashboard_model->get_qeu_percentage($oli['q_id'],'Good',$fd,$td,$dep,$loc,$sou);
					$q_e_p=$this->Dashboard_model->get_qeu_percentage($oli['q_id'],'Excellent',$fd,$td,$dep,$loc,$sou);
					if($q_tl['cnt']!=0){
						$qpd_vp_p=((($q_vp_p['cnt'])/($q_tl['cnt']))*100);
						$qpd_p_p=((($q_p_p['cnt'])/($q_tl['cnt'])) * 100);
						$qpd_p_g=((($q_p_g['cnt'])/($q_tl['cnt'])) * 100);
						$qpd_a_p=((($q_a_p['cnt'])/($q_tl['cnt'])) * 100);
						$qpd_e_p=((($q_e_p['cnt'])/($q_tl['cnt'])) * 100);
					}else{
						$qpd_vp_p=$qpd_p_p=$qpd_p_g=$qpd_a_p=$qpd_e_p=0;
					}
					
					$datas[$oli['q_id']]=$oli;
					$datas[$oli['q_id']]['questions_cnt']=$q_tl['cnt'];
					$datas[$oli['q_id']]['vp_p']=$qpd_vp_p;
					$datas[$oli['q_id']]['p_p']=$qpd_p_p;
					$datas[$oli['q_id']]['p_g']=$qpd_p_g;
					$datas[$oli['q_id']]['a_p']=$qpd_a_p;
					$datas[$oli['q_id']]['e_p']=$qpd_e_p;
					$datas[$oli['q_id']]['poor']=$q_vp_p['cnt'];
					$datas[$oli['q_id']]['avg']=$q_p_p['cnt'];
					$datas[$oli['q_id']]['good']=$q_a_p['cnt'];
					$datas[$oli['q_id']]['vgood']=$q_p_g['cnt'];
					$datas[$oli['q_id']]['exce']=$q_e_p['cnt'];
					
				}
				//echo '<pre>';print_r($datas);exit;
				if(!empty($datas)){
					$data['opd_q_list']=$datas;
				}
				/* ipd question */
				$ipid=$this->Dashboard_model->get_all_questions('IPD',$fd,$td);
				foreach($ipid as $ili){
					$iq_tl=$this->Dashboard_model->get_question_taotal($ili['q_id'],$fd,$td,$dep,$loc,$sou);
					$q_vp_p=$this->Dashboard_model->get_qeu_percentage($ili['q_id'],'Poor',$fd,$td,$dep,$loc,$sou);
					$q_p_p=$this->Dashboard_model->get_qeu_percentage($ili['q_id'],'Average',$fd,$td,$dep,$loc,$sou);
					$q_p_g=$this->Dashboard_model->get_qeu_percentage($ili['q_id'],'Very good',$fd,$td,$dep,$loc,$sou);
					$q_a_p=$this->Dashboard_model->get_qeu_percentage($ili['q_id'],'Good',$fd,$td,$dep,$loc,$sou);
					$q_e_p=$this->Dashboard_model->get_qeu_percentage($ili['q_id'],'Excellent',$fd,$td,$dep,$loc,$sou);
					$iper_tal=$this->Dashboard_model->get_all_ipd_tatol('IPD',$fd,$td,$dep,$loc,$sou);
					if($iq_tl['cnt']!=0){
						$iqpd_vp_p=((($q_vp_p['cnt'])/($iq_tl['cnt']))*100);
						$iqpd_p_p=((($q_p_p['cnt'])/($iq_tl['cnt'])) * 100);
						$iqpd_p_g=((($q_p_g['cnt'])/($iq_tl['cnt'])) * 100);
						$iqpd_a_p=((($q_a_p['cnt'])/($iq_tl['cnt'])) * 100);
						$iqpd_e_p=((($q_e_p['cnt'])/($iq_tl['cnt'])) * 100);
					}else{
						$iqpd_vp_p=$iqpd_p_p=$iqpd_p_g=$iqpd_a_p=$iqpd_e_p=0;
					}
					
					$idatas[$ili['q_id']]=$ili;
					$idatas[$ili['q_id']]['questions_cnt']=$iq_tl['cnt'];
					$idatas[$ili['q_id']]['vp_p']=$iqpd_vp_p;
					$idatas[$ili['q_id']]['p_p']=$iqpd_p_p;
					$idatas[$ili['q_id']]['p_g']=$iqpd_p_g;
					$idatas[$ili['q_id']]['a_p']=$iqpd_a_p;
					$idatas[$ili['q_id']]['e_p']=$iqpd_e_p;
					$idatas[$ili['q_id']]['poor']=$q_vp_p['cnt'];
					$idatas[$ili['q_id']]['avg']=$q_p_p['cnt'];
					$idatas[$ili['q_id']]['good']=$q_a_p['cnt'];
					$idatas[$ili['q_id']]['vgood']=$q_p_g['cnt'];
					$idatas[$ili['q_id']]['exce']=$q_e_p['cnt'];
				}
				if(!empty($idatas)){
					$data['ipd_q_list']=$idatas;
				}
				//echo '<pre>';print_r($data); exit; 
				$this->load->view('admin/dashboard',$data);
			}
			$this->load->view('admin/footer');
		}else{
				$this->session->set_flashdata('error','Please login to continue');
				redirect('admin');
			}
	}	
	public  function logout(){
		
		$admindetails=$this->session->userdata('hms_details');
		$check=$this->Admin_model->check_login_time($admindetails['a_id'],date('Y-m-d'));
		$ctime=date('Y-m-d H:i:s');
		$datetime1 = new DateTime($check['login_time']);
		$datetime2 = new DateTime($ctime);
		$interval = $datetime1->diff($datetime2);
		$diff_in_hrs =$interval->format('%h');
		$diff_in_mins =$interval->format('%i');
		$logout_data=array(
			'hours'=>$diff_in_hrs.':'.$diff_in_mins,
			'logout_time'=>date('Y-m-d H:i:s'),
		);
		$this->Admin_model->update_login_time_status($check['id'],$logout_data);
		$userinfo = $this->session->userdata('hms_details');
        $this->session->unset_userdata($userinfo);
		$this->session->sess_destroy('hms_details');
		$this->session->unset_userdata('hms_details');
        redirect('admin');
	}
}
