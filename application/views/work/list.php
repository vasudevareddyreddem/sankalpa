<style>
.col-xs-2{
	padding-right:0 !important;
	padding-left:1px !important;
}
.col-xs-5{
	padding-right:0 !important;
	padding-left:1px !important;
}
</style>
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
       Assign Task List
      </h1>
		<ol class="breadcrumb">
			<li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a>
			</li>
			<li class="active">Assign Task List</li>
		</ol>
	</section>
	<!-- Main content -->
	<section class="content">
		<div class="box">
			<div class="box-header bg-primary">
				<div class="col-md-2 mt-2">
					<div class="">	<a class="btn btn-default st-btn add-student-btn" href="<?php echo base_url('assignwork/add'); ?>"><i class="fa fa-plus"></i> Add</a>
						
					</div>
				</div>
				<form>
					<div class="col-md-4 col-sm-5 col-xs-5 mt-2">
						<select class="form-control">
							<option>Select</option>
						</select>
					</div>
					<div class="col-md-4 col-sm-5 col-xs-5 mt-2">
					<select class="form-control">
							<option>Select</option>
						</select>
					</div>	
					<div class="col-md-2 col-xs-2 col-sm-2 mt-2">
						<button class="btn btn-warning">Export</button>
					</div>
				</form>
			</div>
			<!-- /.box-header -->
			<div class="box-body table-responsive">
				<table id="example1" class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>Assigned date</th>
							<th>Expected date of completion</th>
							<th>Prioritization</th>
							<th>Employee name</th>
							<th>Task Details</th>
							<th>Days</th>
							<th>Status</th>
							<th>Assign By</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
					<?php if(isset($w_list) && count($w_list)>0){ ?>
					<?php foreach($w_list as $li){ ?>
						<tr>
							<td><?php echo isset($li['from_date'])?$li['from_date']:''; ?></td>
							<td><?php echo isset($li['to_date'])?$li['to_date']:''; ?></td>
							<td><?php echo isset($li['prioritization'])?$li['prioritization']:''; ?></td>
							<td><?php echo isset($li['emp_name'])?$li['emp_name']:''; ?></td>
							<td><?php echo isset($li['message'])?$li['message']:''; ?></td>
							<td><?php echo isset($li['total_day'])?$li['total_day']:''; ?></td>
								<td><?php if($li['status']==1){ echo "<span class='label label-primary'>In progress</span>";}else if($li['status']==0){ echo "<span class='label label-warning'>Pending</span>"; }else if($li['status']==1){ echo "<span class='label label-primary'>In progress</span>"; }else if($li['status']==2){ echo "<span class='label label-success'>Completed</span>"; }else if($li['status']==3){ echo "<span class='label label-danger'>Rejected</span>"; } ?></td>
							<td><?php echo isset($li['assignby'])?$li['assignby']:''; ?></td>
							<td> 
							<a style="margin-top:5px" href="<?php echo base_url('assignwork/view/'.base64_encode($li['a_w_id'])); ?>" data-toggle="tooltip" title="View"><i class="fa fa-file btn btn-warning"></i></a>
							<?php if($li['status']==0){ ?>
								<a style="margin-top:5px" href="#" data-toggle="tooltip" title="Delete" class="confirmation"><i class="fa fa-trash btn btn-danger"></i></a>
							<?php } ?>
							</td>						
						</tr>
					<?php } ?>
					<?php } ?>
					</tbody>
					<tfoot>
						<tr>
							<th>Assigned date</th>
							<th>Expected date of completion</th>
							<th>Prioritization</th>
							<th>Employee name</th>
							<th>Task Details</th>
							<th>Days</th>
							<th>Status</th>
							<th>Assign By</th>
							<th>Action</th>
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
<script>
$(document).ready(function() {
      $('.confirmation').on('click', function() {
        return confirm('Are you sure?');
      });
    });
	$(function () {
	    $("#example1").DataTable();	   
	  });
</script>