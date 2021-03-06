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
	
<link href="https://fonts.googleapis.com/css?family=Fira+Sans&display=swap" rel="stylesheet">
	
</head>
<style>

h3,h2{
	font-family: 'Fira Sans', sans-serif;
	font-weight:500;
	
}
*{
	font-family: 'Fira Sans', sans-serif;
	font-weight:500;
	
}
@media (max-width: 768px) {
	.page-container{
		width:100%!important;
		border:1px solid #ddd;
	}
}
.page-container{
		width:85%;
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
  width: 50px;
  height: 50px;
  padding: 2px;
  /* background-color only for content */
  background-clip: content-box;
  border: 2px solid #0061a5	;
  background-color: #fff;
  border-radius: 50%;
  cursor:pointer;
}

/* appearance for checked radiobutton */
input[type="radio"]:checked {
  background-color: #0061a5;
}
.feed-radio{
	margin-top:15px;
}
/* HIDE RADIO */
[type=radio] { 
  position: absolute;
  opacity: 0;
  width: 50px;
  height: 50px;
}

/* IMAGE STYLES */
[type=radio] + img {
  cursor: pointer;
}

/* CHECKED STYLES */
[type=radio]:checked + img {
  background:#8a8cba;
  height:50px;
  width:50px;
  border-radius:50%;
  padding:2px;
  -webkit-box-shadow: 0px 2px 5px 0px rgba(0,0,0,0.75);
-moz-box-shadow: 0px 2px 5px 0px rgba(0,0,0,0.75);
box-shadow: 0px 2px 5px 0px rgba(0,0,0,0.75);
}
.feed-radio img{
	width:50px
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
								<h2><span class="bg-primary px-2">Customer OPD Feeback Form</span></h2>

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
						<!--<div class="col-md-6">
						 <div class="form-group">
							<label>Email Id</label>
							<input type="text" class="form-control" name="email_id"  placeholder="Enter Your Name">
						  </div>
						</div>-->
						<div class="col-md-6">
						 <div class="form-group">
							<label>Mobile Number</label>
							<input type="text" class="form-control" name="phone_no"  placeholder="Enter Mobile Number">
						  </div>
						</div>
					
						<div class="col-md-6">
						 <div class="form-group">
							<label>Town </label>
							<select class="form-control" name="location">
								<option value="">Select</option>
								<?php if(isset($l_list) && count($l_list)>0){ ?>
									<?php foreach($l_list as $li){ ?>
										<option value="<?php echo $li['l_name']; ?>"><?php echo $li['l_name']; ?></option>
									<?php } ?>								
								<?php } ?>								
							</select>
						  </div>
						</div>
						<div class="col-md-6">
						 <div class="form-group">
							<label>Department </label>
							<select class="form-control" name="department">
								<option value="">Select</option>
								<?php if(isset($d_list) && count($d_list)>0){ ?>
									<?php foreach($d_list as $li){ ?>
										<option value="<?php echo $li['name']; ?>"><?php echo $li['name']; ?></option>
									<?php } ?>								
								<?php } ?>								
							</select>
						  </div>
						</div>
						<div class="col-md-6">
						 <div class="form-group">
							<label>Source </label>
							<select class="form-control" name="source">
								<option value="">Select</option>
								<?php if(isset($s_list) && count($s_list)>0){ ?>
									<?php foreach($s_list as $li){ ?>
										<option value="<?php echo $li['s_name']; ?>"><?php echo $li['s_name']; ?></option>
									<?php } ?>								
								<?php } ?>								
							</select>
						  </div>
						</div>
						
						
					</div>
					<?php if(isset($f_q) && count($f_q)>0){ ?>
						<?php foreach($f_q as $qli){ ?>
						<div class="card-cust" style="margin-top:10px;">
						<input type="hidden" name="qus[<?php echo $qli['q_id']; ?>]" value="<?php echo $qli['qno']; ?>">
							<div class="row">
							<div class="col-md-7">
							<h3><?php echo $qli['qno']; ?>.<?php echo $qli['name']; ?></h3>
							</div>
							<div class="col-md-1 col-xs-3 col-sm-3 text-center">
								<div class="feed-radio">
									<input type="radio"  name="anser[<?php echo $qli['qno']; ?>]" value="Poor" required>
									<img src="<?php echo base_url(); ?>assets/back/img/poor.png">
								</div>
								<small>Poor</small>
							</div>
							<div class="col-md-1 col-xs-2 col-sm-2 text-center">

								<div class="feed-radio">
									<input type="radio"  name="anser[<?php echo $qli['qno']; ?>]" value="Average" required>
									<img src="<?php echo base_url(); ?>assets/back/img/avg.png">
								</div>
								<small>Average</small>
							</div>
							<div class="col-md-1 col-xs-2 col-sm-2 text-center">
								<div class="feed-radio">
									<input type="radio"  name="anser[<?php echo $qli['qno']; ?>]" value="Good" required>
									<img src="<?php echo base_url(); ?>assets/back/img/good.png">
								</div>
								<small>Good</small>
							</div>
							<div class="col-md-1 col-xs-2 col-sm-2 text-center">
								<div class="feed-radio">
									<input type="radio"  name="anser[<?php echo $qli['qno']; ?>]" value="Very good" required>
									<img src="<?php echo base_url(); ?>assets/back/img/vgood.png">
								</div>
								<small>Very good</small>
							</div>
							<div class="col-md-1 col-xs-2 col-sm-2 text-center">
								<div class="feed-radio">
									<input type="radio"  name="anser[<?php echo $qli['qno']; ?>]" value="Excellent" required>
									<img src="<?php echo base_url(); ?>assets/back/img/excellent.png">
								</div>
								<small>Excellent</small>
							</div>
							</div>
						</div>
						<?php } ?>
					<?php } ?>
					<div class="card-cust" style="margin-top:10px;">
						<div class="row">
						<div class="col-md-7">
						<h3><?php echo count($f_q)+1; ?>.Would you recommend sankalpa to others</h3>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input style="opacity:1;width:25px;height:25px;position:relative" type="radio" name="recommend" value="Yes" required>
							</div>
							<small>Yes</small>
						</div>
						<div class="col-md-1 col-xs-2 col-sm-2 text-center">
							<div class="feed-radio">
								<input style="opacity:1;width:25px;height:25px;position:relative" type="radio" name="recommend" value="No" required>
							</div>
							<small>No</small>
						</div>
						</div>
					</div>
					<div class="card-cust form-group" style="margin-top:10px;padding-bottom:10px;">
						<div class="row">
						<div class="col-md-12">
						<h3><?php echo count($f_q)+2; ?>.Any Other Comments</h3>
						
							<textarea class="form-control" name="comment" rows="4" placeholder="Enter Any Other Comments here"></textarea>
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
<?php if($this->session->flashdata('success')): ?>
	<div class="alert_msg1 animated slideInUp bg-succ">
	   <?php echo $this->session->flashdata('success');?> &nbsp; <i class="fa fa-check text-success ico_bac" aria-hidden="true"></i>
	</div>
<?php endif; ?>
<?php if($this->session->flashdata('error')): ?>
	<div class="alert_msg1 animated slideInUp bg-warn">
	   <?php echo $this->session->flashdata('error');?> &nbsp; <i class="fa fa-exclamation-triangle text-success ico_bac" aria-hidden="true"></i>
	</div>
<?php endif; ?>
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
            },phone_no: {
                 validators: {
					notEmpty: {
						message: 'Mobile  Number is required'
					},
					regexp: {
					regexp:  /^[0-9]{10,14}$/,
					message:'Mobile  Number must be 10 to 14 digits'
					}
				
				}
            },comment: {
                 validators: {
					notEmpty: {
						message: 'comment is required'
					}				
				}
            },department: {
                 validators: {
					notEmpty: {
						message: 'Department is required'
					}				
				}
            },source: {
                 validators: {
					notEmpty: {
						message: 'Source is required'
					}				
				}
            },location: {
                 validators: {
					notEmpty: {
						message: 'Town is required'
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
