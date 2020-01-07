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
		<div class="box-header bg-primary">
				<form method="post" action="<?php echo base_url('export/feedbackexport'); ?>">
					<div class="col-md-4 col-sm-5 col-xs-5 mt-2">
						<div class="">
							<input type="text" class="form-control datepicker" name="from_date" required placeholder="Select From Date" value="<?php echo isset($f_date)?$f_date:''; ?>" />
						</div>
					</div>
					<div class="col-md-4 col-sm-5 col-xs-5 mt-2">
						<div class="">
							<input type="text" class="form-control datepicker" name="to_date" required placeholder="Select From Date" value="<?php echo isset($t_date)?$t_date:''; ?>" />
						</div>
					</div>
					<div class="col-md-4 col-sm-5 col-xs-5 mt-2">
						<select class="form-control" name="type" required>
							<option value="">Selec Type</option>
							<option value="ALL">ALL</option>
							<option value="OPD">OPD</option>
							<option value="IPD">IPD</option>
						</select>
					</div>
					<div class="col-md-4 col-sm-5 col-xs-5 mt-2">
					<select class="form-control" name="depart" required >
							<option value="">Select Department</option>
							<option value="ALL">ALL</option>
							<?php if(isset($d_list) && count(d_list)>0){ ?>
								<?php foreach($d_list as $li){ ?>
									<option value="<?php echo $li['name']; ?>"><?php echo $li['name']; ?></option>
								<?php } ?>
							<?php } ?>
					</select>
					</div>	
				
					<div class="col-md-4 col-sm-5 col-xs-5 mt-2">
					<select class="form-control" name="location" required>
							<option value="">Select Location</option>
							<option value="ALL">ALL</option>
							<?php if(isset($l_list) && count($l_list)>0){ ?>
								<?php foreach($l_list as $li){ ?>
									<option value="<?php echo $li['l_name']; ?>"><?php echo $li['l_name']; ?></option>
								<?php } ?>
							<?php } ?>
					</select>
					</div>
					<div class="col-md-2 col-sm-5 col-xs-5 mt-2">
					<select class="form-control" name="source" required>
							<option value="">Select Source</option>
							<option value="ALL">ALL</option>
							<?php if(isset($s_list) && count($s_list)>0){ ?>
								<?php foreach($s_list as $li){ ?>
									<option value="<?php echo $li['s_name']; ?>"><?php echo $li['s_name']; ?></option>
								<?php } ?>								
							<?php } ?>
					</select>
					</div>					
					<div class="col-md-2 col-xs-12 col-sm-12 mt-2">
						<button class="btn btn-warning" type="submit">Export</button>
					</div>
				</form>
			</div>
			<!-- /.box-header -->
			<div class="box-body table-responsive">
				<table id="example" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                <th>Type</th>
                <th>Name</th>
                <th>Mobile No</th>
                <th>Department</th>
                <th>Town</th>
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
					<td><?php echo $fl['phone_no']; ?></td>
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
        "order": [[ 7, "desc" ]]
    } );
} );
	$(function () {
		 $('.datepicker').datepicker({
		   format: 'yyyy-mm-dd',
			autoclose: true,	  
		});
	    //Initialize Select2 Elements
	    $(".select2").select2();


	
	   
	  });
</script>