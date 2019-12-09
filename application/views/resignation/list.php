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
							<th>Reason</th>
							<th>Date & Time</th>
							<th>Status</th>
							<th>Comment</th>
							<th>Approved/rejected By</th>
							<th>Approved/rejected Date & Time</th>
							<th>Last Working Date</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
					<?php if(isset($r_list) && count($r_list)>0){ ?>
					<?php foreach($r_list as $li){ ?>
						<tr>
							<td><?php echo isset($li['reason'])?$li['reason']:''; ?></td>
							<td><?php echo isset($li['created_at'])?$li['created_at']:''; ?></td>
							<td><?php if($li['status']==1){ echo "Approved";}else if($li['status']==0){ echo "Pending"; }else if($li['status']==2){ echo "Rejected"; } ?></td>
							<td><?php echo isset($li['comment'])?$li['comment']:''; ?></td>
							<td><?php echo isset($li['updated_name'])?$li['updated_name']:''; ?></td>
							<td><?php echo isset($li['updated_at'])?$li['updated_at']:''; ?></td>
							<td>
							<?php if($li['last_date']!='' && $li['last_date']!='1970-01-01'){ ?>
							<?php echo isset($li['last_date'])?$li['last_date']:''; ?>
							<?php } ?>
							</td>
							<td> 
							<?php if($li['status']==0){ ?>
									<a href="<?php echo base_url('resignation/delete/'.base64_encode($li['r_id'])); ?>" data-toggle="tooltip" title="Delete" class="confirmation"><i class="fa fa-trash btn btn-danger"></i></a>
							<?php } ?>
							</td>
							
						
							
						</tr>
					<?php } ?>
					<?php } ?>
					</tbody>
					<tfoot>
						<tr>
							<th>Reason</th>
							<th>Date & Time</th>
							<th>Status</th>
							<th>Comment</th>
							<th>Approved/rejected By</th>
							<th>Approved/rejected Date & Time</th>
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