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
		Incident book List
      </h1>
		<ol class="breadcrumb">
			<li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a>
			</li>
			<li class="active">Incident book List</li>
		</ol>
	</section>
	<!-- Main content -->
	<section class="content">
		<div class="box">
			<div class="box-header bg-primary">
				<div class="col-md-2 mt-2">
					<div class="">	<a class="btn btn-default st-btn add-student-btn" href="<?php echo base_url('incidentbook/add'); ?>"><i class="fa fa-plus"></i> Add</a>
						
					</div>
				</div>
				
			</div>
			<!-- /.box-header -->
			<div class="box-body table-responsive">
				<table id="example1" class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>Name</th>
							<th>Date  & Time</th>
							<th>Incident</th>
							<th>Staff / Nurse</th>
							<th>Image</th>
						</tr>
					</thead>
					<tbody>
					<?php if(isset($in_list) && count($in_list)>0){ ?>
					<?php foreach($in_list as $li){ ?>
						<tr>
							<td><?php echo isset($li['name'])?$li['name']:''; ?></td>
							<td><?php echo isset($li['d_time'])?$li['d_time']:''; ?></td>
							<td><?php echo isset($li['incident'])?$li['incident']:''; ?></td>
							<td><?php echo isset($li['staff_nurse'])?$li['staff_nurse']:''; ?></td>
							<td>
								<?php if($li['image']!=''){ ?>
									<img style="width:50px;height:50px;" src="<?php echo base_url('assets/incidentbook/'.$li['image']); ?>">
								<?php } ?>
							</td>												
						</tr>
					<?php } ?>
					<?php } ?>
					</tbody>
					<tfoot>
						<tr>
							<th>Name</th>
							<th>Date  & Time</th>
							<th>Incident</th>
							<th>Staff / Nurse</th>
							<th>Image</th>
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
	 $('.datepicker').datepicker({
		   format: 'yyyy-mm-dd',
			autoclose: true,	  
		});
      $('.confirmation').on('click', function() {
        return confirm('Are you sure?');
      });
    });

	  	$('#example1').DataTable( {
			"order": [[ 8, "desc" ]]
		} );
</script>