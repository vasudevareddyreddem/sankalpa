<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
       Termination Employee List
      </h1>
		<ol class="breadcrumb">
			<li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a>
			</li>
			<li class="active">Termination Employee List</li>
		</ol>
	</section>
	<!-- Main content -->
	<section class="content">
		<div class="box">
			
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
							<th>Termination Date & Time</th>
						</tr>
					</thead>
					<tbody>
					<?php if(isset($t_list) && count($t_list)>0){ ?>
					<?php foreach($t_list as $li){ ?>
						<tr>
							<td><?php echo isset($li['name'])?$li['name']:''; ?></td>
							<td><?php echo isset($li['departname'])?$li['departname']:''; ?></td>
							<td><?php echo isset($li['email'])?$li['email']:''; ?></td>
							<td><?php echo isset($li['mobile'])?$li['mobile']:''; ?></td>
							<td><?php echo isset($li['off_mail'])?$li['off_mail']:''; ?></td>
							<td><?php echo isset($li['branchname'])?$li['branchname']:''; ?></td>
							<td><?php echo isset($li['code'])?$li['code']:''; ?></td>
							<td><?php echo isset($li['doj'])?$li['doj']:''; ?></td>
							<td><?php echo isset($li['created_at'])?$li['created_at']:''; ?></td>
							
							
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
							<th>Termination Date & Time</th>
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