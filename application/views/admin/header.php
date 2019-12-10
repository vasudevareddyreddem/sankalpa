<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Best Hospitals in Tirupati | Sankalpa Super Speciality Hospital</title>
	
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

<body class="hold-transition skin-blue fixed sidebar-mini">
	<!-- Site wrapper -->
	<div class="wrapper">
		<header class="main-header">
			<!-- Logo -->
			<a href="<?php echo base_url('dashboard'); ?>" class="logo">
				<!-- mini logo for sidebar mini 50x50 pixels --> <span class="logo-mini" style="color:#3c8dbc "><img src="<?php echo base_url(); ?>assets/back/img/fav.png" style="width:30px;height:30px;"></span>
				<!-- logo for regular state and mobile devices --> <span class="logo-lg"><img style="height:50px;" class="img-responsive" src="<?php echo base_url(); ?>assets/back/img/logo.png"></span>
			</a>
			<!-- Header Navbar: style can be found in header.less -->
			<nav class="navbar navbar-static-top">
				<!-- Sidebar toggle button-->
				<a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button"> <span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<!-- Messages: style can be found in dropdown.less-->
						<?php if($hms_details['role_id']==2){ ?>
						<?php if(isset($noti) && count($noti)>0){ ?>
						<li class="dropdown notifications-menu">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									<span onclick="unread_noti(<?php echo $hms_details['a_id']; ?>);"> <i class="fa fa-bell-o"></i>
										<?php if(isset($read_cnt['cnt']) && count($read_cnt['cnt'])>0){ ?>
											<span id="noti_cnt"  class="label label-warning"><?php echo $read_cnt['cnt']; ?></span>
										<?php } ?>
									</span>
								</a>
								<ul class="dropdown-menu">
								  <li class="header">You have <?php echo isset($noti)?count($noti):''; ?> notifications</li>
								  <li>
									<!-- inner menu: contains the actual data -->
														<ul class="menu">
														<?php $cnt=0;foreach($noti as $li){ ?>
															<?php if($cnt<=5){ ?>
																  <li>
																	<a href="#">
																	  <i class="fa-file-text-o text-aqua"></i> <?php echo isset($li['msg'])?substr($li['msg'], 0, 35):''; ?>...
																	</a>
																  </li>
															<?php } ?>
														<?php $cnt++;} ?>
														  
														</ul>
													  </li>
													  <li class="footer"><a href="<?php echo base_url('notification/all/'); ?>">View all</a></li>
													</ul>
							  </li>
							  
							  <?php } ?>
							  <?php } ?>
						<!-- User Account: style can be found in dropdown.less -->
						<li class="dropdown user user-menu">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<?php if($hms_details['profile_pic']!=''){ ?>
								<img src="<?php echo base_url('assets/profile_pic/'.$hms_details['profile_pic']); ?>" class="user-image" alt="User Image">
							<?php }else{ ?>
								<img src="<?php echo base_url(); ?>assets/back/img/logo.png" class="user-image" alt="User Image">
							<?php } ?>
								<span class="hidden-xs"><?php echo isset($hms_details['name'])?$hms_details['name']:''; ?></span>
							</a>
							<ul class="dropdown-menu">
							
								<!-- User image -->
								<li class="user-header">
									<?php if($hms_details['profile_pic']!=''){ ?>
										<img src="<?php echo base_url('assets/profile_pic/'.$hms_details['profile_pic']); ?>" class="user-image" alt="User Image">
									<?php }else{ ?>
										<img src="<?php echo base_url(); ?>assets/back/img/logo.png" class="img-circle" alt="User Image">
									<?php } ?>
									<p><?php echo isset($hms_details['name'])?$hms_details['name']:''; ?> <small><?php echo isset($u_d['designation'])?$u_d['designation'].'  |  ':''; ?><?php echo isset($u_d['departname'])?$u_d['departname']:''; ?></small>
									</p>
								</li>
								<!-- Menu Body -->
								<!-- Menu Footer-->
								<li class="user-footer">
									<div class="pull-left"> <a href="<?php echo base_url('profile'); ?>" class="btn btn-default btn-flat">Profile</a>
									</div>
									<div class="pull-right"> <a href="<?php echo base_url('dashboard/logout'); ?>" class="btn btn-default btn-flat">Sign out</a>
									</div>
								</li>
							</ul>
						</li>
						<!-- Control Sidebar Toggle Button -->
					</ul>
				</div>
			</nav>
		</header>
		<!-- =============================================== -->
		<!-- Left side column. contains the sidebar -->
		<aside class="main-sidebar"  style="overflow-y: scroll;">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">
				<!-- Sidebar user panel -->
				<div class="user-panel bg-profile">
					<div class="pull-left image">
					<?php if($hms_details['profile_pic']!=''){ ?>
						<img src="<?php echo base_url('assets/profile_pic/'.$hms_details['profile_pic']); ?>" class="user-image" alt="User Image">
					<?php }else{ ?>
						<img src="<?php echo base_url(); ?>assets/back/img/logo.png
						" class="img-circle" alt="User Image">
					<?php } ?>
					</div>
					<div class="pull-left info">
						<p><?php echo isset($hms_details['name'])?$hms_details['name']:''; ?> </p> <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
					</div>
				</div>
	
				<!-- sidebar menu: : style can be found in sidebar.less -->
				<ul class="sidebar-menu">
					<li class="header">MAIN NAVIGATION</li>
					<?php if($hms_details['role_id']!=2){ ?>
					<li> <a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-tachometer" aria-hidden="true"></i>Dashboard </a></li>
					<?php } ?>
					
					
					<?php if($hms_details['role_id']==3){ ?>
						
						
					<?php } ?>
					<?php if($hms_details['role_id']==1){ ?>
						
						<li class="treeview">
							<a href="#"> <i class="fa fa-arrows"></i>  <span>Module</span>
								<span class="pull-right-container">
								  <i class="fa fa-angle-left pull-right"></i>
								</span>
							</a>
							<ul class="treeview-menu" style="display: none;">
								<li> <a href="<?php echo base_url('module/add'); ?>">Add </a></li>
								<li><a href="<?php echo base_url('module'); ?>">List</a></li>
							</ul>
						</li>
						<li class="treeview">
							<a href="#"> <i class="fa fa-bars"></i><span>Module Menu</span>
								<span class="pull-right-container">
								  <i class="fa fa-angle-left pull-right"></i>
								</span>
							</a>
							<ul class="treeview-menu" style="display: none;">
								<li> <a href="<?php echo base_url('module/menuadd'); ?>">Add </a></li>
								<li><a href="<?php echo base_url('module/menulist'); ?>">List</a></li>
							</ul>
						</li>
						
					<?php }else if($hms_details['role_id']==2){ ?>
						<li class="treeview"> <a href="<?php echo base_url('assignwork/lists'); ?>"><i class="fa fa-paypal" aria-hidden="true"></i>Assign Work </a></li>							
								
					<?php } ?>
					<?php if(isset($m_list) && count($m_list)>0){ ?>
					<?php $cnt=1;foreach($m_list as $m_li){ ?>
							
								<li class="treeview">
									<a href="#"> <i class="fa fa-user-plus"></i>  
									<span><?php echo isset($m_li['m_name'])?$m_li['m_name']:''; ?></span>
									<?php if($m_li['m_name']=='Pending  task'){ ?>
										<span  id="total_a_read" class="label label-warning pull-right" style="margin-right:30px;"></span>
									<?php } ?>
										<span class="pull-right-container">
										  <i class="fa fa-angle-left pull-right"></i>
										</span>
									</a>
									<ul class="treeview-menu" style="display: none;">
										<?php  if(isset($m_li['menu']) && count($m_li['menu'])>0){ ?>
											<?php foreach($m_li['menu'] as $li){ ?>
													<?php if($li['m_menu_name']=='RESIGNATION '){ ?>
														<li>
															<a href="<?php echo base_url(); ?><?php echo $li['m_menu_url']; ?>">
															<?php echo $li['m_menu_name']; ?> <span  id="r_read" class="label label-warning pull-right"></span></a>
															

														</li>
													<?php }else if($li['m_menu_name']=='Attendance regulation'){ ?>
														<li>
															<a href="<?php echo base_url(); ?><?php echo $li['m_menu_url']; ?>">
															<?php echo $li['m_menu_name']; ?> <span  id="a_read" class="label label-warning pull-right"></span></a> 
														</li>
													<?php }else{ ?>
														<li>
															<a href="<?php echo base_url(); ?><?php echo $li['m_menu_url']; ?>">
															<?php echo $li['m_menu_name']; ?></a>
														</li>
													<?php } ?>
											<?php } ?>
										<?php } ?>
									</ul>
								</li>
							
					<?php $cnt++;} ?>
					<?php } ?>					
					<li> <a href="<?php echo base_url('suggestion'); ?>"><i class="fa fa-envelope-o" aria-hidden="true"></i>SUGGESTION </a></li>
					
				</ul>
			</section>
			<!-- /.sidebar -->
		</aside>
		
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
function unread_noti(id){
	if(id !=''){
		    jQuery.ajax({
   			url: "<?php echo base_url('notification/change_notification_read');?>",
   			data: {
				aid: id,
			},
   			type: "POST",
   			format:"Json",
   					success:function(data){
						var parsedData = JSON.parse(data);
						if(parsedData.msg=1){
							$('#noti_cnt').hide();
						}						
   					}
           });
	   }
}

jQuery.ajax({
url: "<?php echo base_url('calendar/unrread_attadance_cnt');?>",
data: {
},
type: "POST",
format:"Json",
		success:function(data){
			var parsedData = JSON.parse(data);
			if(parsedData.msg=1){
				$('#total_a_read').empty();
				$('#a_read').empty();
				$('#r_read').empty();
				$('#total_a_read').append(parsedData.un_bt_cnt);
				$('#a_read').append(parsedData.un_ar_cnt);
				$('#r_read').append(parsedData.un_r_cnt);
			}						
		}
});


</script>