<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
       Holidays List
      </h1>
		<ol class="breadcrumb">
			<li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a>
			</li>
			<li class="active">Holidays List</li>
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
							<th>Date</th>
							<th>Festival</th>
							<th>Day Name</th>
						</tr>
					</thead>
					<tbody>
					<?php if(isset($h_list) && count($h_list)>0){ ?>
					<?php foreach($h_list as $li){ ?>
						<tr>
							<td><?php echo isset($li['date'])?$li['date']:''; ?></td>
							<td><?php echo isset($li['festival'])?$li['festival']:''; ?></td>
							<td><?php echo isset($li['day_name'])?$li['day_name']:''; ?></td>
						</tr>
					<?php } ?>
					<?php } ?>
					</tbody>
					<tfoot>
						<tr>
							<th>Date</th>
							<th>Festival</th>
							<th>Day Name</th>
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