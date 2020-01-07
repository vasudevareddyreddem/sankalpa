<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Dashboard_model extends CI_Model 

{
	function __construct() 
	{
		parent::__construct();
		$this->load->database("default");
	}
	
	public  function get_hospital_list(){
		$this->db->select('COUNT(h.h_id) AS cnt')->from('hospital as h');
		$this->db->where('h.status',1);
		return $this->db->get()->row_array();
	}
	public  function get_doc_list(){
		$this->db->select('COUNT(d.d_id) AS cnt')->from('doctors as d');
		$this->db->where('d.status',1);
		return $this->db->get()->row_array();
	}
	public  function get_department_list(){
		$this->db->select('COUNT(dep.d_id) AS cnt')->from('department as dep');
		$this->db->where('dep.status',1);
		return $this->db->get()->row_array();
	}public  function get_specilization_list(){
		$this->db->select('COUNT(sep.s_id) AS cnt')->from('specialty as sep');
		$this->db->where('sep.status',1);
		return $this->db->get()->row_array();
	}
	
	/* hospital*/
	public function get_hospital_id($id){
		$this->db->select('h.h_id,h.a_id,h.name')->from('hospital as h');
		$this->db->where('h.a_id',$id);
		return $this->db->get()->row_array();
	}
	public  function get_hospital_doc_list($id){
		$this->db->select('COUNT(d.d_id) AS cnt')->from('doctors as d');
		$this->db->where('d.h_id',$id);
		$this->db->where('d.status',1);
		return $this->db->get()->row_array();
	}
	public function get_hospital_appointment_list($id){
		$this->db->select('COUNT(ab.a_b_id) AS cnt')->from('appointments_booking as ab');
		$this->db->where('ab.h_id',$id);
        return $this->db->get()->row_array();
	}
	public function get_appointment_list(){
		$this->db->select('COUNT(ab.a_b_id) AS cnt')->from('appointments_booking as ab');
        return $this->db->get()->row_array();
	}

	public  function get_accounts_count($type){
		$this->db->select('COUNT(a_id) AS cnt')->from('admin');
		$this->db->where('role_id',$type);
		$this->db->where('status',1);
        return $this->db->get()->row_array();
	}
	
	public  function get_present_absent_list($date){
		$this->db->select('COUNT(lr.id) AS cnt')->from('login_report as lr');
		$this->db->join('admin as a','a.a_id=lr.a_id','left');
		$this->db->where('a.role_id',2);
		$this->db->group_by('lr.a_id');
		$this->db->where('lr.create_at',$date);
        return $this->db->get()->row_array();
	}
	
	public  function get_manager_present_absent_list($dids,$date){
		$this->db->select('COUNT(lr.id) AS cnt')->from('admin as a');
		$this->db->join('department as d','d.d_id=a.dep_id','left');
		$this->db->join('branches as b','b.b_id=a.branch_id','left');
		$this->db->join('login_report as lr','lr.a_id=a.a_id','left');
		$this->db->where('lr.create_at',$date);
		$this->db->where_in('a.dep_id',$dids);
		return $this->db->get()->row_array();
	}
	
	
	/* graphs  purpose */	
	public  function  get_opd_percentage($t,$fd,$td,$dep,$loc,$sou){
		$this->db->select('COUNT(fa.f_d_a_id) AS cnt')->from('feed_back_answer as fa');
		$this->db->join('feed_back as fb','fb.f_b_id=fa.f_b_id','left');
		$this->db->where('fb.type','OPD');
		$this->db->where('fa.answer',$t);
		if($dep!=''){
			$this->db->where('fb.department',$dep);
		}if($loc!=''){
			$this->db->where('fb.location',$loc);
		}if($sou!=''){
			$this->db->where('fb.source',$sou);
		}
        return $this->db->get()->row_array();
	}
	
	public  function get_all_opd_tatol($t,$fd,$td,$dep,$loc,$sou){
		$inbetweentime="date BETWEEN '".$fd."' AND '".$td."'";
		$this->db->select('COUNT(fa.f_d_a_id) AS cnt')->from('feed_back_answer as  fa');
		$this->db->join('feed_back as fb','fb.f_b_id=fa.f_b_id','left');
		$this->db->where('fb.type',$t);
		if($fd!='' && $td!=''){
			$this->db->where($inbetweentime);
		}
		if($dep!=''){
			$this->db->where('fb.department',$dep);
		}if($loc!=''){
			$this->db->where('fb.location',$loc);
		}if($sou!=''){
			$this->db->where('fb.source',$sou);
		}
        return $this->db->get()->row_array();
	}
	
	/* graphs  purpose */	
	public  function  get_ipd_percentage($t,$fd,$td,$dep,$loc,$sou){
		$inbetweentime="date BETWEEN '".$fd."' AND '".$td."'";
		$this->db->select('COUNT(fa.f_d_a_id) AS cnt')->from('feed_back_answer as fa');
		$this->db->join('feed_back as fb','fb.f_b_id=fa.f_b_id','left');
		$this->db->where('fb.type','IPD');
		$this->db->where('fa.answer',$t);
		if($fd!='' && $td!=''){
			$this->db->where($inbetweentime);
		}
		if($dep!=''){
			$this->db->where('fb.department',$dep);
		}if($loc!=''){
			$this->db->where('fb.location',$loc);
		}if($sou!=''){
			$this->db->where('fb.source',$sou);
		}
        return $this->db->get()->row_array();
	}
	
	public  function get_all_ipd_tatol($t,$fd,$td,$dep,$loc,$sou){
		$inbetweentime="date BETWEEN '".$fd."' AND '".$td."'";
		$this->db->select('COUNT(fa.f_d_a_id) AS cnt')->from('feed_back_answer as  fa');
		$this->db->join('feed_back as fb','fb.f_b_id=fa.f_b_id','left');
		$this->db->where('fb.type',$t);
		if($dep!=''){
			$this->db->where('fb.department',$dep);
		}if($loc!=''){
			$this->db->where('fb.location',$loc);
		}if($sou!=''){
			$this->db->where('fb.source',$sou);
		}
        return $this->db->get()->row_array();
	}
	
	public  function get_all_questions($type,$fd,$td){
		$this->db->select('q.q_id,q.qno,q.name,q.type')->from('question as q');
		$this->db->where('q.type',$type);
		$this->db->where('q.status',1);		
		return $this->db->get()->result_array();
	}
	
	public  function  get_question_taotal($qid,$fd,$td,$dep,$loc,$sou){
		$inbetweentime="date BETWEEN '".$fd."' AND '".$td."'";
		$this->db->select('COUNT(fa.f_d_a_id) AS cnt')->from('feed_back_answer as fa');
		$this->db->join('feed_back as fb','fb.f_b_id=fa.f_b_id','left');
		$this->db->where('fa.q_id',$qid);
		if($fd!='' && $td!=''){
			$this->db->where($inbetweentime);
		}
		if($dep!=''){
			$this->db->where('fb.department',$dep);
		}if($loc!=''){
			$this->db->where('fb.location',$loc);
		}if($sou!=''){
			$this->db->where('fb.source',$sou);
		}
        return $this->db->get()->row_array();
	}
	
	public function get_qeu_percentage($qid,$t,$fd,$td,$dep,$loc,$sou){
		$inbetweentime="date BETWEEN '".$fd."' AND '".$td."'";
		$this->db->select('COUNT(fa.f_d_a_id) AS cnt')->from('feed_back_answer as fa');
		$this->db->join('feed_back as fb','fb.f_b_id=fa.f_b_id','left');
		$this->db->where('fa.q_id',$qid);
		$this->db->where('fa.answer',$t);
		if($fd!='' && $td!=''){
			$this->db->where($inbetweentime);
		}if($dep!=''){
			$this->db->where('fb.department',$dep);
		}if($loc!=''){
			$this->db->where('fb.location',$loc);
		}if($sou!=''){
			$this->db->where('fb.source',$sou);
		}
        return $this->db->get()->row_array();
	}
	
	/* month wise data */
	
	public function month_wise_op_data($t,$pt,$fd,$td){
		$inbetweentime="date BETWEEN '".$fd."' AND '".$td."'";
		$this->db->select('fa.created_at,COUNT(fa.f_d_a_id) AS cnt')->from('feed_back_answer as fa');
		$this->db->join('question as q','q.q_id=fa.q_id','left');
		$this->db->where('fa.answer',$t);
		if($pt!=''){
			$this->db->where('q.type',$pt);
		}
		$this->db->where("DATE_FORMAT(fa.created_at,'%Y')", date('Y'));
		$this->db->group_by("DATE_FORMAT(fa.created_at,'%m')");
		if($fd!='' && $td!=''){
			$this->db->where($inbetweentime);
		}
        return $this->db->get()->result_array();
	}
	
	public  function get_work_high_compete($pr,$st){
		$this->db->select('COUNT(aw.a_w_id) AS cnt')->from('assign_work as aw');
		$this->db->where('aw.prioritization',$pr);
		$this->db->where('aw.status',$st);
		return $this->db->get()->row_array();
	}
	public  function get_emp_work_high_compete($pr,$st,$aid){
		$this->db->select('COUNT(aw.a_w_id) AS cnt')->from('assign_work as aw');
		$this->db->where('aw.prioritization',$pr);
		$this->db->where('aw.status',$st);
		$this->db->where('aw.emp_id',$aid);
		return $this->db->get()->row_array();
	}
	
	
	
	
  }