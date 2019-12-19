<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
       Feedback List
      </h1>
		<ol class="breadcrumb">
			<li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a>
			</li>
			<li class="active">Feedback List</li>
		</ol>
	</section>
	<!-- Main content -->
	<section class="content">
		<div class="box">
			<!-- /.box-header -->
			<div class="box-body table-responsive">
				<table id="example" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                <th>Type</th>
                <th>Name</th>
                <th>Mr No</th>
                <th>Mobile No</th>
                <th>Email</th>
                <th>Department</th>
                <th>Location</th>
                <th>Source</th>
                <th>Date & Time</th>
                <th>Feedback View</th>
                
            </tr>
        </thead>
        <tbody>
		<?php if(isset($f_list) && count($f_list)>0){ ?>
			<?php foreach($f_list as $fl){ ?>
				<tr>
					<td><?php echo $fl['type']; ?></td>
					<td><?php echo $fl['name']; ?></td>
					<td><?php echo $fl['p_no']; ?></td>
					<td><?php echo $fl['phone_no']; ?></td>
					<td><?php echo $fl['email_id']; ?></td>
					<td><?php echo $fl['department']; ?></td>
					<td><?php echo $fl['location']; ?></td>
					<td><?php echo $fl['source']; ?></td>
					<td><?php echo $fl['created_at']; ?></td>
					<td><a class="btn btn-primary btn-xs" href="<?php echo base_url('user/feedbackview/'.base64_encode($fl['f_b_id'])); ?>">View</a></td>
				</tr>
			<?php } ?>
		<?php } ?>
            
        </tbody>
        
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
    $('#example').DataTable( {
        "order": [[ 8, "desc" ]]
    } );
} );
	$(function () {
	    //Initialize Select2 Elements
	    $(".select2").select2();


	
	   
	  });
</script>