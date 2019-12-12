<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1> Dashboard <small></small>  </h1>
		<ol class="breadcrumb">
			<li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">Dashboard</li>
		</ol>
	</section>
	<!-- Main content -->
	<section class="content">
		<!-- Small boxes (Stat box) -->
		<div class="">
		<!-- ./col -->
			<div class="col-lg-6 col-xs-12">
				<!-- small box -->
				<div class="small-box bg-green">
					<div class="inner">
						<h3><?php echo isset($emp_act['cnt'])?$emp_act['cnt']:''; ?></h3>
						<p>TOTAL EMPLOYEE </p>
					</div>
					<div class="icon"> <i class="fa fa-list"></i>
					</div> <a href="<?php echo base_url('employee'); ?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
				</div>
			</div>
			<!-- ./col -->
			<div class="col-lg-6 col-xs-12">
				<!-- small box -->
				<div class="small-box bg-red">
					<div class="inner">
						<h3><?php echo isset($emp_present['cnt'])?$emp_present['cnt']:'0'; ?>/<?php echo isset($emp_act['cnt'])?$emp_act['cnt']:''; ?></h3>
						<p>PRESENT AND ABSENT EMPLOYEES </p>
					</div>
					<div class="icon"> <i class="fa fa-list"></i>
					</div> <a href="<?php echo base_url('employee/presentabsent'); ?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
				</div>
			</div>
			
			
			
			<!-- ./col -->
		</div>
	</section>
	<!-- /.content -->
</div>
