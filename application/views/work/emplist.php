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
			
			<!-- /.box-header -->
			<div class="box-body table-responsive">
				<table id="example1" class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>Assigned date</th>
							<th>Expected date of completion</th>
							<th>Prioritization</th>
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
								<td><?php echo isset($li['message'])?$li['message']:''; ?></td>
								<td><?php echo isset($li['total_day'])?$li['total_day']:''; ?></td>
								<td><?php if($li['status']==1){ echo "<span class='label label-info'>In progress</span>";}else if($li['status']==0){ echo "<span class='label label-warning'>Pending</span>"; }else if($li['status']==1){ echo "<span class='label label-info'>In progress</span>"; }else if($li['status']==2){ echo "<span class='label label-success'>Completed</span>"; }else if($li['status']==3){ echo "<span class='label label-danger'>Rejected</span>"; } ?></td>
								<td><?php echo isset($li['assignby'])?$li['assignby']:''; ?></td>
								<td>
									<a class="label label-primary" href="<?php echo base_url('assignwork/view/'.base64_encode($li['a_w_id'])); ?>">View</a> 
									<a class="label label-info" href="<?php echo base_url('assignwork/status/'.base64_encode($li['a_w_id']).'/'.base64_encode(1)); ?>">In progress</a> 
									
									<div style="margin-top:10px;">
									<a class="label label-success" href="<?php echo base_url('assignwork/status/'.base64_encode($li['a_w_id']).'/'.base64_encode(2)); ?>">Completed</a> 
									<a class="label label-danger" href="<?php echo base_url('assignwork/status/'.base64_encode($li['a_w_id']).'/'.base64_encode(3)); ?>">Reject</a>
									</div>
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