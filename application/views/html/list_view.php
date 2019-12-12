<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Feedback | Sankalpa Super Speciality Hospital</title>
	
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<!-- Bootstrap 3.3.7 -->
	<link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url(); ?>assets/back/img/fav.png" />
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/back/css/bootstrap.min.css">
	<link href="<?php echo base_url(); ?>assets/back/css/bootstrapValidator.min.css" rel="stylesheet">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
	<!-- Ionicons -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/back/css/dataTables.bootstrap.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/back/css/daterangepicker.css">
	<!-- bootstrap datepicker -->
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/back/css/datepicker3.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/back/css/bootstrap-timepicker.min.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/back/css/bootstrap-colorpicker.min.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/back/css/select2.min.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/back/css/custom.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/back/css/fullcalendar.min.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/back/css/AdminLTE.min.css">
	<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/back/css/skins/_all-skins.min.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/back/css/style.css">
	<!-- iCheck -->
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/back/css/blue.css">
	<!-- Morris chart -->
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/back/css/morris.css">
	<!-- jvectormap -->
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/back/css/jquery-jvectormap-1.2.2.css">
	
	<!-- bootstrap wysihtml5 - text editor -->
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/back/css/bootstrap3-wysihtml5.min.css">
	<!-- jQuery 2.2.3 -->

	

	
</head>
<style>
@media (max-width: 768px) {
	.page-container{
		width:100%!important;
		border:1px solid #ddd;
	}
}
.page-container{
		width:80%;
		border:1px solid #ddd;
		background:#fff;
	}
	.card-cust{
		border:1px solid #ddd;
		padding:0px 10px;
		min-height:65px;
	}
	.glyphicon{
		font-size:40px;
		padding-top:8px;
		color:#aaa;
	}
	input[type="radio"] {
    -ms-transform: scale(2.5); /* IE 9 */
    -webkit-transform: scale(2.5); /* Chrome, Safari, Opera */
    transform: scale(2.5);
	
}
.feed-radio{
	margin-top:15px;
}
</style>
<body class="login-bg-feed">
	<div class="" style="display:flex;justify-content: center;">
	<div class="page-container">
		<div  style="background:#f5f5f5;padding:20px;width:100%;height:120px;border-bottom:1px solid #ddd" >
			<a href="<?php echo base_url(''); ?>"><div class="col-md-12 text-center">
				<img style="height:100px;margin:0 auto;" class="img-responsive" src="<?php echo base_url(); ?>assets/back/img/logo.png">
			</div></a>
			
		</div>
		<div class="clearfix">&nbsp;</div>
			
		<div class="row">
			<div class="container-fluid" >
			<div class="col-md-12 text-center">
				<h2>Customer Feeback List</h2>
			</div>
			<div class="col-md-12 ">
		<table id="example" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                <th>Name</th>
                <th>OP/IP Num</th>
                <th>Mobile No</th>
                <th>Email</th>
                <th>Date of Upload</th>
                <th>Feedback View</th>
                
            </tr>
        </thead>
        <tbody>
		<?php if(isset($f_list) && count($f_list)>0){ ?>
			<?php foreach($f_list as $fl){ ?>
				<tr>
					<td><?php echo $fl['name']; ?></td>
					<td><?php echo $fl['p_no']; ?></td>
					<td><?php echo $fl['phone_no']; ?></td>
					<td><?php echo $fl['email_id']; ?></td>
					<td><?php echo $fl['created_at']; ?></td>
					<td><a class="btn btn-primary btn-xs" href="<?php echo base_url('feedback/view/'.base64_encode($fl['f_b_id'])); ?>">View</a></td>
				</tr>
			<?php } ?>
		<?php } ?>
            
        </tbody>
        
    </table>
			</div>
			
			
			</div>
			
		</div>
			
	</div>
	</div>
	
	<script src="<?php echo base_url(); ?>assets/back/js/jquery-2.2.3.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script src="<?php echo base_url(); ?>assets/back/js/bootstrap.min.js"></script>
	<script src="<?php echo base_url(); ?>assets/back/js/bootstrapValidator.min.js"></script>
<script src="<?php echo base_url(); ?>assets/back/js/jquery.dataTables.min.js"></script>
<script src="<?php echo base_url(); ?>assets/back/js/dataTables.bootstrap.min.js"></script>

<script src="<?php echo base_url(); ?>assets/back/js/select2.full.min.js"></script>


<script src="<?php echo base_url(); ?>assets/back/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php echo base_url(); ?>assets/back/js/demo.js"></script>

<script src="<?php echo base_url(); ?>assets/back/js/icheck.min.js"></script>

<script>
$(document).ready(function() {
    $('#example').DataTable( {
        "order": [[ 4, "desc" ]]
    } );
} );
	$(function () {
	    //Initialize Select2 Elements
	    $(".select2").select2();


	
	   
	  });
</script>


</body>
</html>
