<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
       Resignation List
      </h1>
		<ol class="breadcrumb">
			<li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a>
			</li>
			<li class="active">Resignation List</li>
		</ol>
	</section>
	<!-- Main content -->
	<section class="content">
		<div class="box">
			<div class="box-header bg-primary">
				<div class="col-md-6">
					<div class="">	<a class="btn btn-default st-btn add-student-btn" href="<?php echo base_url('resignation'); ?>"><i class="fa fa-plus"></i> Apply</a>
						
					</div>
				</div>
			</div>
			<!-- /.box-header -->
			<div class="box-body table-responsive">
				<table id="example1" class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>Employee Id</th>
							<th>Employee Name</th>
							<th>Employee doj</th>
							<th>Designation Date & Time</th>
							<th>Status</th>
							<th>Reason</th>
							<th>Comment</th>
							<th>Last Working Date</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
					<?php if(isset($r_list) && count($r_list)>0){ ?>
					<?php foreach($r_list as $li){ ?>
						<tr>
							<td><?php echo isset($li['code'])?$li['code']:''; ?></td>
							<td><?php echo isset($li['empname'])?$li['empname']:''; ?></td>
							<td><?php echo isset($li['doj'])?$li['doj']:''; ?></td>
							<td><?php echo isset($li['created_at'])?$li['created_at']:''; ?></td>
							<td><?php if($li['status']==1){ echo "Approved";}else if($li['status']==0){ echo "Pending"; }else if($li['status']==2){ echo "Rejected"; } ?></td>
							<td><?php echo isset($li['reason'])?$li['reason']:''; ?></td>
							<td><?php echo isset($li['comment'])?$li['comment']:''; ?></td>
							<td>
							<?php if($li['last_date']!='' && $li['last_date']!='1970-01-01'){ ?>
							<?php echo isset($li['last_date'])?$li['last_date']:''; ?>
							<?php } ?>
							</td>
							<td> 
							<?php if($li['status']==0){ ?>
									<a href="<?php echo base_url('resignation/view/'.base64_encode($li['r_id'])); ?>" data-toggle="tooltip" title="Delete" class="confirmation">View</a> |
									<a href="<?php echo base_url('resignation/approvestatus/'.base64_encode($li['r_id']).'/'.base64_encode(1)); ?>" data-toggle="tooltip" title="Delete" class="confirmation">Accept</a> |
									<a href="<?php echo base_url('resignation/approvestatus/'.base64_encode($li['r_id']).'/'.base64_encode(2)); ?>" data-toggle="tooltip" title="Delete" class="confirmation">Reject</a>
							<?php } ?>
							</td>
							
						
							
						</tr>
					<?php } ?>
					<?php } ?>
					</tbody>
					<tfoot>
						<tr>
							<th>Employee Id</th>
							<th>Employee Name</th>
							<th>Employee doj</th>
							<th>Designation Date & Time</th>
							<th>Status</th>
							<th>Reason</th>
							<th>Comment</th>
							<th>Last Working Date</th>
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