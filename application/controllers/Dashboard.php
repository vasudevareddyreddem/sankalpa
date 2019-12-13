<?php
defined('BASEPATH') OR exit('No direct script access allowed');
@include_once( APPPATH . 'controllers/Sidebar.php');

class Dashboard extends sidebar {
	public function __construct() 
	{
		parent::__construct();
		$this->load->model('Dashboard_model');
	}
	public function index()
	{	
		if($this->session->userdata('hms_details'))
		{
			$l_d=$this->session->userdata('hms_details');
			//echo '<pre>';print_r($l_d);exit; 
			$post=$this->input->post();
			if(isset($post['from_date']) && $post['from_date']!=''){
				$fd=date("Y-m-d", strtotime($post['from_date']));
				$td=date("Y-m-d", strtotime($post['to_date']));
			}else{
				$fd='';
				$td='';
			}
			$data['f_date']=$fd;
			$data['t_date']=$td;
			if($l_d['role_id']==2){
				redirect('profile');
			}else if($l_d['role_id']==1){
				$data['emp_act']=$this->Dashboard_model->get_accounts_count(2);
				$data['emp_present']=$this->Dashboard_model->get_present_absent_list(date('Y-m-d'));
				/* opd */
				$opd_vp_p=$this->Dashboard_model->get_opd_percentage('Very Poor',$fd,$td);
				$opd_p_p=$this->Dashboard_model->get_opd_percentage('Poor',$fd,$td);
				$opd_p_g=$this->Dashboard_model->get_opd_percentage('Good',$fd,$td);
				$opd_a_p=$this->Dashboard_model->get_opd_percentage('Average',$fd,$td);
				$opd_e_p=$this->Dashboard_model->get_opd_percentage('Excellent',$fd,$td);
				$per_tal=$this->Dashboard_model->get_all_opd_tatol('OPD',$fd,$td);
				//echo '<pre>';print_r($per_tal);exit;
				if($per_tal['cnt']!=0){
				$data['opd_vp_p'] =((($opd_vp_p['cnt'])/($per_tal['cnt']))*100);
				$data['opd_p_p'] = ((($opd_p_p['cnt'])/($per_tal['cnt'])) * 100);
				$data['opd_p_g'] = ((($opd_p_g['cnt'])/($per_tal['cnt'])) * 100);
				$data['opd_a_p'] = ((($opd_a_p['cnt'])/($per_tal['cnt'])) * 100);
				$data['opd_e_p'] = ((($opd_e_p['cnt'])/($per_tal['cnt'])) * 100);
				}else{
				$data['opd_vp_p']=$data['opd_p_p']=$data['opd_p_g']=$data['opd_a_p']=$data['opd_e_p']=0;	
				}
				/* ipd */
				$ipd_vp_p=$this->Dashboard_model->get_ipd_percentage('Very Poor',$fd,$td);
				$ipd_p_p=$this->Dashboard_model->get_ipd_percentage('Poor',$fd,$td);
				$ipd_p_g=$this->Dashboard_model->get_ipd_percentage('Good',$fd,$td);
				$ipd_a_p=$this->Dashboard_model->get_ipd_percentage('Average',$fd,$td);
				$ipd_e_p=$this->Dashboard_model->get_ipd_percentage('Excellent',$fd,$td);
				$iper_tal=$this->Dashboard_model->get_all_ipd_tatol('IPD',$fd,$td);
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
					$q_tl=$this->Dashboard_model->get_question_taotal($oli['q_id'],$fd,$td);
					//echo '<pre>';print_r($q_tl);exit;
					$q_vp_p=$this->Dashboard_model->get_qeu_percentage($oli['q_id'],'Very Poor',$fd,$td);
					$q_p_p=$this->Dashboard_model->get_qeu_percentage($oli['q_id'],'Poor',$fd,$td);
					$q_p_g=$this->Dashboard_model->get_qeu_percentage($oli['q_id'],'Good',$fd,$td);
					$q_a_p=$this->Dashboard_model->get_qeu_percentage($oli['q_id'],'Average',$fd,$td);;
					$q_e_p=$this->Dashboard_model->get_qeu_percentage($oli['q_id'],'Excellent',$fd,$td);
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
					$datas[$oli['q_id']]['vp_p']=$qpd_vp_p;
					$datas[$oli['q_id']]['p_p']=$qpd_p_p;
					$datas[$oli['q_id']]['p_g']=$qpd_p_g;
					$datas[$oli['q_id']]['a_p']=$qpd_a_p;
					$datas[$oli['q_id']]['e_p']=$qpd_e_p;
				}
				if(!empty($datas)){
					$data['opd_q_list']=$datas;
				}
				/* ipd question */
				$ipid=$this->Dashboard_model->get_all_questions('IPD',$fd,$td);
				foreach($ipid as $ili){
					$iq_tl=$this->Dashboard_model->get_question_taotal($ili['q_id'],$fd,$td);
					$q_vp_p=$this->Dashboard_model->get_qeu_percentage($ili['q_id'],'Very Poor',$fd,$td);
					$q_p_p=$this->Dashboard_model->get_qeu_percentage($ili['q_id'],'Poor',$fd,$td);
					$q_p_g=$this->Dashboard_model->get_qeu_percentage($ili['q_id'],'Good',$fd,$td);
					$q_a_p=$this->Dashboard_model->get_qeu_percentage($ili['q_id'],'Average',$fd,$td);
					$q_e_p=$this->Dashboard_model->get_qeu_percentage($ili['q_id'],'Excellent',$fd,$td);
					$iper_tal=$this->Dashboard_model->get_all_ipd_tatol('IPD',$fd,$td);
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
					$idatas[$ili['q_id']]['vp_p']=$iqpd_vp_p;
					$idatas[$ili['q_id']]['p_p']=$iqpd_p_p;
					$idatas[$ili['q_id']]['p_g']=$iqpd_p_g;
					$idatas[$ili['q_id']]['a_p']=$iqpd_a_p;
					$idatas[$ili['q_id']]['e_p']=$iqpd_e_p;
				}
				if(!empty($idatas)){
					$data['ipd_q_list']=$idatas;
				}
				//echo '<pre>';print_r($idatas); exit; 
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
