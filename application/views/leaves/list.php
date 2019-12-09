<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
       Leaves List
      </h1>
		<ol class="breadcrumb">
			<li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a>
			</li>
			<li class="active">Leaves List</li>
		</ol>
	</section>
	<!-- Main content -->
	<section class="content">
		<div class="box">
			<div class="box-header bg-primary">
				<div class="col-md-6">
					<div class="">	<a class="btn btn-default st-btn add-student-btn" href="<?php echo base_url('leaves/add'); ?>"><i class="fa fa-plus"></i> Apply</a>
						
					</div>
				</div>
			</div>
			<!-- /.box-header -->
			<div class="box-body table-responsive">
				<table id="example1" class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>From date</th>
							<th>To date</th>
							<th>Type</th>
							<th>Comment</th>
							<th>Days</th>
							<th>Status</th>
							<th>Reason</th>
							<th>Approved/rejected By</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
					<?php if(isset($l_list) && count($l_list)>0){ ?>
					<?php foreach($l_list as $li){ ?>
						<tr>
							<td><?php echo isset($li['from_date'])?$li['from_date']:''; ?></td>
							<td><?php echo isset($li['to_date'])?$li['to_date']:''; ?></td>
							<td><?php if($li['l_type']==1){ echo "Sick Leave";}else if($li['l_type']==3){ echo "Reseved holiday";}else if($li['l_type']==4){ echo "Additional reserved holiday";}else{ echo "Causal Leave"; } ?></td>
							<td><?php echo isset($li['message'])?$li['message']:''; ?></td>
							<td><?php echo isset($li['total_day'])?$li['total_day']:''; ?></td>
							<td><?php if($li['status']==1){ echo "Approved";}else if($li['status']==0){ echo "Pending"; }else if($li['status']==2){ echo "Rejected"; } ?></td>
							<td><?php echo isset($li['reason'])?$li['reason']:''; ?></td>
							<td><?php echo isset($li['approvedby'])?$li['approvedby']:''; ?></td>
							<td> 
							<?php if($li['status']==0){ ?>
									<a href="<?php echo base_url('leaves/delete/'.base64_encode($li['l_id'])); ?>" data-toggle="tooltip" title="Delete" class="confirmation"><i class="fa fa-trash btn btn-danger"></i></a>
							<?php } ?>
							</td>
							
						
							
						</tr>
					<?php } ?>
					<?php } ?>
					</tbody>
					<tfoot>
						<tr>
							<th>From date</th>
							<th>To date</th>
							<th>Type</th>
							<th>Comment</th>
							<th>Days</th>
							<th>Status</th>
							<th>Reason</th>
							<th>Approved/rejected By</th>
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