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
	<script src="<?php echo base_url(); ?>assets/back/js/jquery-2.2.3.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script src="<?php echo base_url(); ?>assets/back/js/bootstrap.min.js"></script>
	<script src="<?php echo base_url(); ?>assets/back/js/bootstrapValidator.min.js"></script>
	

	
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
		margin:20px
	}
	.glyphicon{
		font-size:40px;
		padding-top:8px;
		color:#aaa;
	}
input[type="radio"] {
  /* remove standard background appearance */
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  /* create custom radiobutton appearance */
  display: inline-block;
  width: 25px;
  height: 25px;
  padding: 2px;
  /* background-color only for content */
  background-clip: content-box;
  border: 2px solid #0061a5	;
  background-color: #fff;
  border-radius: 50%;
}

/* appearance for checked radiobutton */
input[type="radio"]:checked {
  background-color: #0061a5;
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
			<div class="col-md-12 text-center">
				<h2 style="text-decoration: underline;">Customer Feeback Form</h2>
			</div>
			<div class="clearfix">&nbsp;</div>
		<div class="row">
			<div class="container-fluid px-4" >
			
			<form id="defaultForm" action="<?php echo base_url('feedback/opdpost'); ?>" method="post">
			<input type="hidden" name="f_type" value="0">
			<input type="hidden" name="type" value="OPD">				
			<div class="row" style="margin:5px;">
						<div class="col-md-6">
						 <div class="form-group">
							<label>Name</label>
							<input type="text" class="form-control" name="name"  placeholder="Enter Your Name">
						  </div>
						</div>
						<div class="col-md-6">
						 <div class="form-group">
							<label>Patient OPD No</label>
							<input type="text" class="form-control" name="pod_no"  placeholder="Enter Your Name">
						  </div>
						</div>
						<div class="col-md-6">
						 <div class="form-group">
							<label>Email Id</label>
							<input type="text" class="form-control" name="email_id"  placeholder="Enter Your Name">
						  </div>
						</div>
						<div class="col-md-6">
						 <div class="form-group">
							<label>Phone No</label>
							<input type="text" class="form-control" name="phone_no"  placeholder="Enter Your Name">
						  </div>
						</div>
					</div>
					<div class="card-cust" style="margin-top:10px;">
						<div class="row">
						<div class="col-md-7">
						<h3>1.Admission Process</h3>
						</div>
						<div class="col-md-1 col-xs-3 col-sm-3 text-center">
							<div class="feed-radio">
								<input type="radio"  name="qus1" value="Very Poor" required>
							</div>
							<small>Very Poor</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio"  name="qus1" value="Poor" required>
							</div>
							<small>Poor</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio"  name="qus1" value="Average" required>
							</div>
							<small>Average</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio"  name="qus1" value="Good" required>
							</div>
							<small>Good</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio"  name="qus1" value="Excellent" required>
							</div>
							<small>Excellent</small>
						</div>
						</div>
					</div>
					<div class="card-cust" style="margin-top:10px;">
						<div class="row">
						<div class="col-md-7">
						<h3>2.Wards & Rooms Cleanliness</h3>
						</div>
						<div class="col-md-1 col-xs-3 col-sm-3 text-center">
							<div class="feed-radio">
								<input type="radio"  name="qus2" value="Very Poor" required>
							</div>
							<small>Very Poor</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio"  name="qus2" value="Poor" required>
							</div>
							<small>Poor</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio"  name="qus2" value="Average" required>
							</div>
							<small>Average</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio"  name="qus2" value="Good" required>
							</div>
							<small>Good</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio"  name="qus2" value="Excellent" required>
							</div>
							<small>Excellent</small>
						</div>
						</div>
					</div>
					<div class="card-cust" style="margin-top:10px;">
						<div class="row">
						<div class="col-md-7">
						<h3>3.Toilets Cleanliness</h3>
						</div>
						<div class="col-md-1 col-xs-3 col-sm-3 text-center">
							<div class="feed-radio">
								<input type="radio"  name="qus3" value="Very Poor" required>
							</div>
							<small>Very Poor</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio"  name="qus3" value="Poor" required>
							</div>
							<small>Poor</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio"  name="qus3" value="Average" required>
							</div>
							<small>Average</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio"  name="qus3" value="Good" required>
							</div>
							<small>Good</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio"  name="qus3" value="Excellent" required>
							</div>
							<small>Excellent</small>
						</div>
						</div>
					</div>
					<div class="card-cust" style="margin-top:10px;">
						<div class="row">
						<div class="col-md-7">
						<h3>4.Room Service & Facilities</h3>
						</div>
						<div class="col-md-1 col-xs-3 col-sm-3 text-center">
							<div class="feed-radio">
								<input type="radio"  name="qus4" value="Very Poor" required>
							</div>
							<small>Very Poor</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio"  name="qus4" value="Poor" required>
							</div>
							<small>Poor</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio"  name="qus4" value="Average" required>
							</div>
							<small>Average</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio" name="qus4" value="Good" required>
							</div>
							<small>Good</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio" name="qus4" value="Excellent" required>
							</div>
							<small>Excellent</small>
						</div>
						</div>
					</div>
					<div class="card-cust" style="margin-top:10px;">
						<div class="row">
						<div class="col-md-7">
						<h3>5.Nursing Services</h3>
						</div>
						<div class="col-md-1 col-xs-3 col-sm-3 text-center">
							<div class="feed-radio">
								<input type="radio" name="qus5" value="Very Poor" required>
							</div>
							<small>Very Poor</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio" name="qus5" value="Poor" required>
							</div>
							<small>Poor</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio" name="qus5" value="Average" required>
							</div>
							<small>Average</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio" name="qus5" value="Average" required>
							</div>
							<small>Good</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio"  name="qus5" value="Excellent" required>
							</div>
							<small>Excellent</small>
						</div>
						</div>
					</div>
					<div class="card-cust" style="margin-top:10px;">
						<div class="row">
						<div class="col-md-7">
						<h3>6.Treating Doctor Services</h3>
						</div>
						<div class="col-md-1 col-xs-3 col-sm-3 text-center">
							<div class="feed-radio">
								<input type="radio" name="qus6" value="Very Poor" required>
							</div>
							<small>Very Poor</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio" name="qus6" value="Poor" required>
							</div>
							<small>Poor</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio"  name="qus6" value="Average" required>
							</div>
							<small>Average</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio" name="qus6" value="Good" required>
							</div>
							<small>Good</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio" name="qus6" value="Excellent" required>
							</div>
							<small>Excellent</small>
						</div>
						</div>
					</div>
					<div class="card-cust" style="margin-top:10px;">
						<div class="row">
						<div class="col-md-7">
						<h3>7.House Keeping & Security Services</h3>
						</div>
						<div class="col-md-1 col-xs-3 col-sm-3 text-center">
							<div class="feed-radio">
								<input type="radio"  name="qus7" value="Very Poor" required>
							</div>
							<small>Very Poor</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio" name="qus7" value="Poor" required>
							</div>
							<small>Poor</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio" name="qus7" value="Average" required>
							</div>
							<small>Average</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio" name="qus7" value="Good" required>
							</div>
							<small>Good</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio"  name="qus7" value="Excellent" required>
							</div>
							<small>Excellent</small>
						</div>
						</div>
					</div>
					<div class="card-cust" style="margin-top:10px;">
						<div class="row">
						<div class="col-md-7">
						<h3>8.Admin Staff Services</h3>
						</div>
						<div class="col-md-1 col-xs-3 col-sm-3 text-center">
							<div class="feed-radio">
								<input type="radio"  name="qus8" value="Very Poor" required>
							</div>
							<small>Very Poor</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio" name="qus8" value="Poor" required>
							</div>
							<small>Poor</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio" name="qus8" value="Average" required>
							</div>
							<small>Average</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio" name="qus8" value="Good" required>
							</div>
							<small>Good</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio" name="qus8" value="Excellent" required>
							</div>
							<small>Excellent</small>
						</div>
						</div>
					</div>
					<div class="card-cust" style="margin-top:10px;">
						<div class="row">
						<div class="col-md-7">
						<h3>9.Food Quality & Dietician Services</h3>
						</div>
						<div class="col-md-1 col-xs-3 col-sm-3 text-center">
							<div class="feed-radio">
								<input type="radio" name="qus9" value="Very Poor" required>
							</div>
							<small>Very Poor</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio" name="qus9" value="Poor" required>
							</div>
							<small>Poor</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio" name="qus9" value="Average" required>
							</div>
							<small>Average</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio" name="qus9" value="Good" required>
							</div>
							<small>Good</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio" name="qus9" value="Excellent" required>
							</div>
							<small>Excellent</small>
						</div>
						</div>
					</div>
					<div class="card-cust" style="margin-top:10px;">
						<div class="row">
						<div class="col-md-7">
						<h3>10.Billing & Discharge Process</h3>
						</div>
						<div class="col-md-1 col-xs-3 col-sm-3 text-center">
							<div class="feed-radio">
								<input type="radio" name="qus10" value="Very Poor" required>
							</div>
							<small>Very Poor</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio" name="qus10" value="Poor" required>
							</div>
							<small>Poor</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio" name="qus10" value="Average" required>
							</div>
							<small>Average</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio" name="qus10" value="Good" required>
							</div>
							<small>Good</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio" name="qus10" value="Excellent" required>
							</div>
							<small>Excellent</small>
						</div>
						</div>
					</div>
					
					
					
					<div class="card-cust" style="margin-top:10px;">
						<div class="row">
						<div class="col-md-7">
						<h3>11.Do you recommend Sankalpa to others</h3>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio" name="qus11" value="Yes" required>
							</div>
							<small>Yes</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input type="radio"  name="qus11" value="No" required>
							</div>
							<small>No</small>
						</div>
						</div>
					</div>
					<div class="card-cust form-group" style="margin-top:10px;padding-bottom:10px;">
						<div class="row">
						<div class="col-md-12">
						<h3>12.Other Comments</h3>
						
							<textarea class="form-control" name="comment" rows="4" placeholder="Enter Comments here"></textarea>
						</div>
						</div>
					</div>
					<div class="mt-4 text-center">
						<button type="submit" class="btn btn-primary ">Submit Feedback</button>
					</div>
				</form>	
			
			</div>
			
			</div>
			
		</div>
			
	</div>
	</div>
</body>
</html>
<script>
$(document).ready(function() {
	$('#defaultForm').bootstrapValidator({
		fields: {
            name: {
                validators: {
					notEmpty: {
						message: 'Name is required'
					}
				}
            },
            pod_no: {
                validators: {
					notEmpty: {
						message: 'IP Reg No is required'
					}
				}
            },email_id: {
                 validators: {
					notEmpty: {
						message: 'Email is required'
					},
					regexp: {
					regexp: /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/,
					message: 'Please enter a valid email address. For example johndoe@domain.com.'
					}
				}
            },phone_no: {
                 validators: {
					notEmpty: {
						message: 'Phone  Number is required'
					},
					regexp: {
					regexp:  /^[0-9]{10,14}$/,
					message:'Phone  Number must be 10 to 14 digits'
					}
				
				}
            },comment: {
                 validators: {
					notEmpty: {
						message: 'comment is required'
					}				
				}
            },			
			image: {
                validators: {
					regexp: {
					regexp: "(.*?)\.(png|jpeg|jpg|gif)$",
					message: 'Uploaded file is not a valid. Only png,jpg,jpeg,gif files are allowed'
					}
				}
            }
        }
    });
});
</script>