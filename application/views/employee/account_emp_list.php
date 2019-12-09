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
			<div class="box-header bg-primary">
				<div class="col-md-6">
					<div class="">	<a class="btn btn-default st-btn add-student-btn" href="<?php echo base_url('employee/add'); ?>"><i class="fa fa-plus"></i> Add</a>
						
					</div>
				</div>
			</div>
			<!-- /.box-header -->
			<div class="box-body table-responsive">
				<table id="example1" class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>Name</th>
							<th>Department</th>
							<th>Personal Email</th>
							<th>Mobile</th>
							<th>Office Email</th>
							<th>Branch</th>
							<th>Code</th>
							<th>DOJ</th>
							<th>Status</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
					<?php if(isset($e_list) && count($e_list)>0){ ?>
					<?php foreach($e_list as $li){ ?>
						<tr>
							<td><?php echo isset($li['name'])?$li['name']:''; ?></td>
							<td><?php echo isset($li['departname'])?$li['departname']:''; ?></td>
							<td><?php echo isset($li['email'])?$li['email']:''; ?></td>
							<td><?php echo isset($li['mobile'])?$li['mobile']:''; ?></td>
							<td><?php echo isset($li['off_mail'])?$li['off_mail']:''; ?></td>
							<td><?php echo isset($li['branchname'])?$li['branchname']:''; ?></td>
							<td><?php echo isset($li['code'])?$li['code']:''; ?></td>
							<td><?php echo isset($li['doj'])?$li['doj']:''; ?></td>
							<td><?php if($li['status']==1){ echo "Active";}else{ echo "Deactive"; } ?></td>
							<td> 
								<a href="<?php echo base_url('employee/details/'.base64_encode($li['a_id'])); ?>"><i class="fa fa-file btn btn-success"></i></a>
							</td>
							
						</tr>
					<?php } ?>
					<?php } ?>
					</tbody>
					<tfoot>
						<tr>
							<th>Name</th>
							<th>Department</th>
							<th>Personal Email</th>
							<th>Mobile</th>
							<th>Office Email</th>
							<th>Branch</th>
							<th>Code</th>
							<th>DOJ</th>
							<th>Status</th>
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