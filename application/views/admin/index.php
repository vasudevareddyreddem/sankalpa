<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Best Hospitals in Tirupati | Sankalpa Super Speciality Hospital</title>
	<!-- Tell the browser to be responsive to screen width -->
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<!-- Bootstrap 3.3.7 -->
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/back/css/bootstrap.min.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/back/css/style.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/back/css/custom.css">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
	<!-- Ionicons -->
	<link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url(); ?>assets/back/img/fav.png" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/back/css/AdminLTE.min.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/back/css/blue.css">
</head>
<body class="login-page login-bg">
	<div class="login-box login-responsive " >
	
	<div class="row  ">
		<div class=" col-md-6 text-center"> <a href="#" class="text-center"><img  style="" class="logo-res img-responsive text-center" src="<?php echo base_url(); ?>assets/back/img/logo.png	"></a>
		
		</div>
		<!-- /.login-logo -->
		<div class="login-box-body col-md-6">
			<h3 class="login-box-msg">Login</h3>
			<form action="<?php echo base_url('admin/loginpost'); ?>" method="post">
				<?php $csrf = array(
								'name' => $this->security->get_csrf_token_name(),
								'hash' => $this->security->get_csrf_hash()
						); ?>
										<input type="hidden" name="<?=$csrf['name'];?>" value="<?=$csrf['hash'];?>" />

				<div class="form-group has-feedback">
					<input type="text" name="email" id="email" class="form-control" placeholder="Email" required> <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" name="pwd" id="pwd" class="form-control" placeholder="Password" required> <span class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div class="row">
				
					<!-- /.col -->
					<div class="col-xs-4"> <button type="submit" class="btn btn-primary btn-block btn-flat " style="border-radius:20px;">Sign In</button>
					</div>
					<div class="col-xs-8"> <a href="<?php echo base_url('admin/forgotpassword'); ?>">I forgot my password</a></button>
					</div>
					<!-- /.col -->
				</div>
			</form>
			<!-- /.social-auth-links --> 
			<br>
		</div>
		</div>
		
		<!-- /.login-box-body -->
	</div>
	<!-- /.login-box -->
	<!-- jQuery 2.2.3 -->
	<script src="<?php echo base_url(); ?>assets/back/js/jquery-2.2.3.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script src="<?php echo base_url(); ?>assets/back/js/bootstrap.min.js"></script>
	<!-- iCheck -->
	<script src="<?php echo base_url(); ?>assets/back/js/icheck.min.js"></script>
	<script>
		$(function () {
		    $('input').iCheck({
		      checkboxClass: 'icheckbox_square-blue',
		      radioClass: 'iradio_square-blue',
		      increaseArea: '20%' // optional
		    });
		  });
	</script>
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