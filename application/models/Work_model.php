<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Work_model extends CI_Model 

{
	function __construct() 
	{
		parent::__construct();
		$this->load->database("default");
	}
	public  function emp_list(){
		$this->db->select('a.a_id,a.name,d.name as departname,b.name as branchname,a.email,a.mobile,a.code,a.off_mail,a.branch_id,a.doj,a.status,a.created_at')->from('admin as a');
		$this->db->join('department as d','d.d_id=a.dep_id','left');
		$this->db->join('branches as b','b.b_id=a.branch_id','left');
		$this->db->where('a.status !=',2);
		$this->db->where('a.role_id',2);
		return $this->db->get()->result_array();	
	}
	
	public function save_work($d){
		$this->db->insert('assign_work',$d);
        return $this->db->insert_id();
	}
	
	public  function work_list($id){
		$this->db->select('a.name as emp_name,ass.name as assignby,aw.a_w_id,aw.emp_id,aw.prioritization,aw.from_date,aw.to_date,aw.total_day,aw.message,aw.status,aw.created_at,')->from('assign_work as aw');
		$this->db->join('admin as a','a.a_id=aw.emp_id','left');
		$this->db->join('admin as ass','ass.a_id=aw.created_by','left');
		$this->db->order_by('aw.a_w_id','desc');
		return $this->db->get()->result_array();	
	}
	public  function emp_work_list($emp){
		$this->db->select('a.name as emp_name,ass.name as assignby,aw.a_w_id,aw.emp_id,aw.prioritization,aw.from_date,aw.to_date,aw.total_day,aw.message,aw.status,aw.created_at,')->from('assign_work as aw');
		$this->db->join('admin as a','a.a_id=aw.emp_id','left');
		$this->db->join('admin as ass','ass.a_id=aw.created_by','left');
		$this->db->where('aw.emp_id',$emp);
		return $this->db->get()->result_array();	
	}	
	public  function view_work_details($id){
		$this->db->select('*')->from('assign_work as aw');
		$this->db->where('aw.a_w_id',$id);
		return $this->db->get()->row_array();
	}	
	public  function work_update($id,$d){
		$this->db->where('a_w_id',$id);
		return $this->db->update('assign_work',$d);
	}	
	public  function save_work_comments($d){
		$this->db->insert('assign_work_comments',$d);
        return $this->db->insert_id();
	}
	public  function view_work_comment($id){
		$this->db->select('awc.commet,awc.created_at,a.name')->from('assign_work_comments as awc');
		$this->db->join('admin as a','a.a_id=awc.created_by','left');
		$this->db->where('awc.a_w_id',$id);
		$this->db->order_by('awc.w_a_c_id','desc');
		return $this->db->get()->result_array();
	}
	public  function get_emp_list($id){
		$this->db->select('a_id,name')->from('admin');
		$this->db->where('status',1);
		$this->db->where('role_id',2);
		return $this->db->get()->result_array();
	}
	
	public  function get_emp_works_list($empid,$pro,$from_date,$to_date){
		$inbetweentime="DATE_FORMAT(aw.created_at,'%Y-%m-%d') BETWEEN '".$from_date."' AND '".$to_date."'";
		$this->db->select('a.name,aw.a_w_id,aw.from_date,aw.to_date,aw.prioritization,aw.to_date,aw.total_day,aw.to_date,aw.message,aw.to_date,aw.status,ass.name as assignby,')->from('assign_work as aw');
		$this->db->join('admin as a','a.a_id=aw.emp_id','left');
		$this->db->join('admin as ass','ass.a_id=aw.created_by','left');

		if($empid!='ALL'){
			$this->db->where('aw.emp_id',$empid);
		}if($pro!='ALL'){
			$this->db->where('aw.prioritization',$pro);
		}
		if($from_date!='' && $to_date!=''){
			$this->db->where($inbetweentime);
		}		
		return $this->db->get()->result_array();
	}
	
	public  function get_feedback_list($from_date,$to_date,$type,$depart,$location,$source){
		$inbetweentime="fb.date BETWEEN '".$from_date."' AND '".$to_date."'";
		$this->db->select('fb.*')->from('feed_back as fb');
		if($type!='ALL'){
			$this->db->where('fb.type',$type);	
		}if($depart!='ALL'){
			$this->db->where('fb.department',$depart);	
		}if($location!='ALL'){
			$this->db->where('fb.location',$location);	
		}if($source!='ALL'){
			$this->db->where('fb.source',$source);	
		}
		if($from_date!='' && $to_date!=''){
			$this->db->where($inbetweentime);
		}
		$return=$this->db->get()->result_array();
		foreach($return as $li){
			//$get_feed_rating=$this->get_feedback_rating_question($li['f_b_id']);
			$getfeed_avg=$this->get_feedback_rating_avg($li['f_b_id']);
			$q_cnt=$this->get_feedback_rating_avg_cnt($li['f_b_id']);
			$per_c=((($getfeed_avg['tsum'])/(($q_cnt['cnt'])*10))*10);
			$p=round($per_c);
			if($p==1){
				$st="Very Poor";
			}else if($p==2){
				$st="Poor";
			}else if($p==3){
				$st="Average";
			}else if($p==4){
				$st="Good";
			}else if($p==5){
				$st="Excellent";
			}else if($p==0){
				$st="";
			}
			$data[$li['f_b_id']]=$li;
			//$data[$li['f_b_id']]['q_ans']=isset($get_feed_rating['questionanw'])?$get_feed_rating['questionanw']:'';
			$data[$li['f_b_id']]['q_percent']=isset($per_c)?number_format($per_c,2):'';
			$data[$li['f_b_id']]['q_rating']=isset($st)?$st:'';
			$data[$li['f_b_id']]['q_rating_cnt']=isset($q_cnt['cnt'])?$q_cnt['cnt']:'';
		}
		if(!empty($data)){
			return $data;
			
		}
	}
	
	public  function get_feedback_rating_question($f_b_id){
		$this->db->select('GROUP_CONCAT(concat(q.name," : ",fa.answer)) as questionanw')->from('feed_back_answer as fa');
		$this->db->join('question as q','q.q_id=fa.q_id','left');
		$this->db->where('fa.f_b_id',$f_b_id);
		return $this->db->get()->row_array();
	}
	public  function get_feedback_rating_questionqqqq($f_b_id){
		$this->db->select('GROUP_CONCAT()q.q_id,q.name,fa.answer')->from('feed_back_answer as fa');
		$this->db->join('question as q','q.q_id=fa.q_id','left');
		$this->db->where('fa.f_b_id',$f_b_id);
		return $this->db->get()->result_array();
	}
	
	public  function get_feedback_rating_avg($f_b_id){
		$this->db->select('SUM(fa.rating) as tsum')->from('feed_back_answer as fa');
		$this->db->join('question as q','q.q_id=fa.q_id','left');
		$this->db->where('fa.f_b_id',$f_b_id);
		return $this->db->get()->row_array();
	}
	public  function get_feedback_rating_avg_cnt($f_b_id){
		$this->db->select('COUNT(fa.rating) as cnt')->from('feed_back_answer as fa');
		$this->db->join('question as q','q.q_id=fa.q_id','left');
		$this->db->where('fa.f_b_id',$f_b_id);
		return $this->db->get()->row_array();
	}
	
	
	
	
  }