<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
       PRESENT AND ABSENT EMPLOYEES
      </h1>
		<ol class="breadcrumb">
			<li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a>
			</li>
			<li class="active">PRESENT AND ABSENT EMPLOYEES</li>
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
							<th>Name</th>
							<th>Department</th>
							<th>Branch</th>
							<th>Code</th>
							<th>Login time</th>
							<th>Logout  time</th>
							<th>Hours</th>
							<th>Status</th>
						</tr>
					</thead>
					<tbody>
					<?php if(isset($present_emp) && count($present_emp)>0){ ?>
					<?php foreach($present_emp as $li){ ?>
						<tr>
							<td><?php echo isset($li['name'])?$li['name']:''; ?></td>
							<td><?php echo isset($li['departname'])?$li['departname']:''; ?></td>
							<td><?php echo isset($li['branchname'])?$li['branchname']:''; ?></td>
							<td><?php echo isset($li['code'])?$li['code']:''; ?></td>
							<td><?php echo isset($li['login_time'])?$li['login_time']:''; ?></td>
							<td><?php echo isset($li['logout_time'])?$li['logout_time']:''; ?></td>
							<td><?php echo isset($li['hours'])?$li['hours']:''; ?></td>				
							<td><?php echo isset($li['status'])?$li['status']:''; ?></td>				
						</tr>
					<?php } ?>
					<?php } ?>
					</tbody>
					<tfoot>
						<tr>
							<th>Name</th>
							<th>Department</th>
							<th>Branch</th>
							<th>Code</th>
							<th>Login time</th>
							<th>Logout  time</th>
							<th>Hours</th>
							<th>Status</th>
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