<style>
.span_class
{
border: 1px solid #ddd;
margin:0 5px;	
padding :4px;
line-height:45px;
cursor : pointer;
font-size:20px;
}
td{
vertical-align: middle !important;	
}
</style>
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
       Employee List
      </h1>
		<ol class="breadcrumb">
			<li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a>
			</li>
			<li class="active">Employee List</li>
		</ol>
	</section>
	<!-- Main content -->
	<section class="content">
		<div class="box">
		<form action="<?php echo base_url('calendar/index'); ?>" method="post">
			<div class="box-header">
				<div class="col-md-6 form-group">
					<label class=" control-label">Year</label>
					<div class="">
					<?php 
					$current_year = date('Y')-1;
					$date_range2 = range($current_year, $current_year+3);
					?>
						<select type="text" class="form-control" name="year" id="name" required>
							<option value="">Select</option>
							<?php foreach($date_range2 as $yea){ ?>
								<?php if($p_data['year']==$yea){ ?>
									<option selected value="<?php echo $yea; ?>"><?php echo $yea; ?></option>
								<?php }else{ ?>
									<option value="<?php echo $yea; ?>"><?php echo $yea; ?></option>
								<?php } ?>
							<?php } ?>
						</select>
					</div>
				</div>
				<div class="col-md-6 form-group">
					<label class=" control-label">Month</label>
					<div class="">
					<?php $months = array('1'=>'January','2'=>'February','3'=>'March','4'=>'April','5'=>'May', '6'=>'June','7'=>'July ','8'=>'August','9'=>'September','10'=>'October','11'=>'November','12'=>'December'); ?>
						<select type="text" class="form-control" name="month" id="month" required>
							<option value="">Select</option>
							<?php foreach($months as $key=>$val){ ?>
								<?php if($p_data['month']==$key){ ?>
									<option selected value="<?php echo $key; ?>"><?php echo $val; ?></option>
								<?php }else{ ?>
									<option value="<?php echo $key; ?>"><?php echo $val; ?></option>	
								<?php } ?>								
							<?php } ?>
						</select>
					</div>
				</div>
				<div class="col-md-6 form-group">
					<label class=" control-label">Branch</label>
					<div class="">
						<select type="text" class="form-control" name="branch" id="branch">
							<option value="">Select</option>
							<?php if(isset($e_branch) && count($e_branch)>0){ ?>
								<?php foreach($e_branch as $li){ ?>
									<?php if($p_data['branch']==$li['b_id']){ ?>
										<option selected value="<?php echo $li['b_id']; ?>"><?php echo $li['name']; ?></option>
									<?php }else{ ?>
										<option value="<?php echo $li['b_id']; ?>"><?php echo $li['name']; ?></option>
									<?php } ?>	
								<?php } ?>
							<?php } ?>
						</select>
					</div>
				</div>
				<div class="col-md-6 form-group">
					<label class=" control-label">Department</label>
					<div class="">
						<select type="text" class="form-control" name="department" id="department" >
							<option value="">Select</option>
							<?php if(isset($e_department) && count($e_department)>0){ ?>
								<?php foreach($e_department as $li){ ?>
										<?php if($p_data['department']==$li['d_id']){ ?>
											<option selected value="<?php echo $li['d_id']; ?>"><?php echo $li['name']; ?></option>
										<?php }else{ ?>
											<option value="<?php echo $li['d_id']; ?>"><?php echo $li['name']; ?></option>

										<?php } ?>
								<?php } ?>
							<?php } ?>
						</select>
					</div>
				</div>
				<div class="clearfix">&nbsp;</div>
				<div class="col-md-6 form-group">
					<button type="submit" class="btn btn-primary">Search</button>
				</div>
			</div>
			</form>
			<!-- /.box-header -->
			<div class="box-body table-responsive">
				<table id="example1" class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>Emp Id</th>
							<th>Emp Name</th>
							<th>Department</th>
							<th>Branch</th>
							<th>Attendance</th>
						</tr>
					</thead>
					<tbody>
					<?php if(isset($emp_list) && count($emp_list)>0){ ?>
					<?php foreach($emp_list as $li){ ?>
						<tr>
							<td><?php echo isset($li['code'])?$li['code']:''; ?></td>
							<td><?php echo isset($li['name'])?$li['name']:''; ?></td>
							<td><?php echo isset($li['departname'])?$li['departname']:''; ?></td>
							<td><?php echo isset($li['branchname'])?$li['branchname']:''; ?></td>
							<td>
							<?php foreach($li['log_data'] as $l){ ?>
								<a href="javascript;void(0);" data-toggle="modal" data-target="#myModal"><span onclick="get_dat_details('<?php echo $li['a_id']; ?>','<?php echo $l['date']; ?>');" class="span_class" style="background-color:<?php echo $l['color']; ?>;color:<?php if( $l['color']=='#fff'){  echo "#1b1e1b";}else{ echo "#fff";} ?>" style=""><b><?php echo date('d',strtotime($l['date'])); ?></b></span></a>
							<?php } ?>
							
							</td>
						</tr>
					<?php } ?>
					<?php } ?>
					</tbody>
					<tfoot>
						<tr>
							<th>Emp Id</th>
							<th>Emp Name</th>
							<th>Department</th>
							<th>Branch</th>
							<th>Attendance</th>
						</tr>
					</tfoot>
				</table>
			</div>
			<!-- /.box-body -->
		</div>
		<!-- /.row -->
	</section>
	<!-- /.content -->
</div>
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content" style="border:solid 3px #3f399d">
	
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Date :  <span id="sdate"></span></h4>
      </div>
	 
	  
      <div class="modal-body table-responsive">
	  <table class="table table-bordered table-striped">
			<tr>
				<th>Name  </th><td><span id="e_name"></span></td>
			</tr>
			<tr>			
				<th>Employee Id </th><td><span id="emp_id"></span></td>
			</tr>
			<tr>				
				<th>Department  </th><td><span id="e_dapart"></span></td>	
				</tr>
				<tr>
				<th>Branch </th><td><span id="e_branch"></span></td>	
				</tr>
				<tr>
					<th>Login Time </th><td><span id="startTime"></span></td>
				</tr>
				<tr>
					<th>Logout Time </th><td><span id="endTime"></span></td>
				</tr>
				<tr>
					<th>Total working time </th><td> <span id="total_work_time"></span></td>
				</tr>
				<tr>
					<td>
						<span id="a_t_reason"></span>
						<span id="a_t_leave"></span>
					</td>
				</tr>
			
			</table>
      </div>
	  
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
<script>
function get_dat_details(aid,date){
		$("#emp_id").empty();
		$("#e_name").empty();
		$("#e_dapart").empty();
		$("#e_branch").empty();
		$("#sdate").empty();
		$("#total_work_time").empty();
		$("#startTime").empty();
		$("#endTime").empty();
		$('#a_t_reason').empty();
		$('#a_t_leave').empty();
	if(aid!='' && date!=''){
		jQuery.ajax({
			url: "<?php echo base_url('calendar/get_emp_login_data');?>",
			data: {
				a_id: aid,
				l_date: date,
			},
			dataType: 'JSON',
			type: 'POST',
			success: function (data) {
				if(data.msg==1){
					
					/**/
                    $("#emp_id").html(data.emp_code);
                    $("#e_name").html(data.empname);
                    $("#e_dapart").html(data.b_name);
                    $("#e_branch").html(data.d_name);
                    $("#sdate").html(data.date);
                    $("#total_work_time").html(data.hrs);
                    $("#startTime").html(data.intime);
                    $("#endTime").html(data.outime);
                    $('#a_t_reason').empty();
                    $('#a_t_reason').append(data.res_text);
                    $('#a_t_leave').append(data.leve_msg);
				}
			}
		});
	}
}
$(document).ready(function() {
      $('.confirmation').on('click', function() {
        return confirm('Are you sure?');
      });
    });
	$(function () {
	    $("#example1").DataTable();	   
	  });
</script>