<head>
<script src="<?php echo base_url(); ?>assets/back/js/jquery.canvasjs.min.js"></script>
	<?php //echo '<pre>';print_r($opd_q_list);exit; ?>
<script>
window.onload = function () {

var options = {
	title: {
		text: "OPD Patient Feedback"
	},
	subtitles: [{
		text: "As of Given"
	}],
	animationEnabled: true,
	data: [{
		type: "pie",
		startAngle: 40,
		toolTipContent: "<b>{label}</b>: {y}%",
		showInLegend: "true",
		legendText: "{label}",
		indexLabelFontSize: 15,
		indexLabel: "{label} - {y}%",
		dataPoints: [
			{ y: '<?php echo number_format($opd_vp_p, 2); ?>', label: "Very Poor"},
			{ y: <?php echo number_format($opd_p_p, 2); ?>, label: "Poor"},
			{ y: <?php echo number_format($opd_a_p, 2); ?>, label: "Average"},
			{ y: <?php echo number_format($opd_p_g, 2); ?>, label: "Good" },
			{ y: <?php echo number_format($opd_e_p, 2); ?>, label: "Excellent"}
		]
	}]
};
$("#opd_pie_chart").CanvasJSChart(options);

var options = {
	title: {
		text: "IPD Patient Feedback"
	},
	subtitles: [{
		text: "As of Given"
	}],
	animationEnabled: true,
	data: [{
		type: "pie",
		startAngle: 40,
		toolTipContent: "<b>{label}</b>: {y}%",
		showInLegend: "true",
		legendText: "{label}",
		indexLabelFontSize: 15,
		indexLabel: "{label} - {y}%",
		dataPoints: [
			{ y: '<?php echo number_format($ipd_vp_p, 2); ?>', label: "Very Poor"},
			{ y: <?php echo number_format($ipd_p_p, 2); ?>, label: "Poor"},
			{ y: <?php echo number_format($ipd_a_p, 2); ?>, label: "Average"},
			{ y: <?php echo number_format($ipd_p_g, 2); ?>, label: "Good" },
			{ y: <?php echo number_format($ipd_e_p, 2); ?>, label: "Excellent"}
		]
	}]
};
$("#ipd_pie_chart").CanvasJSChart(options);
<?php if(isset($opd_q_list) && count($opd_q_list)>0){ ?>
					<?php foreach($opd_q_list as $pqli){ ?>
					var options = {
							title: {
								text: "<?php echo $pqli['qno']; ?>.<?php echo $pqli['name']; ?> Feedback"
							},
							subtitles: [{
								text: "As of Given"
							}],
							animationEnabled: true,
							data: [{
								type: "pie",
								startAngle: 40,
								toolTipContent: "<b>{label}</b>: {y}%",
								showInLegend: "true",
								legendText: "{label}",
								indexLabelFontSize: 15,
								indexLabel: "{label} - {y}%",
								dataPoints: [
									{ y: '<?php echo number_format($pqli['vp_p'], 2); ?>', label: "Very Poor"},
									{ y: <?php echo number_format($pqli['p_p'], 2); ?>, label: "Poor"},
									{ y: <?php echo number_format($pqli['a_p'], 2); ?>, label: "Average"},
									{ y: <?php echo number_format($pqli['p_g'], 2); ?>, label: "Good" },
									{ y: <?php echo number_format($pqli['e_p'], 2); ?>, label: "Excellent"}
								]
							}]
						};
						$("#opd<?php echo $pqli['q_id']; ?>").CanvasJSChart(options);
					<?php } ?>
	<?php } ?>
	<?php if(isset($ipd_q_list) && count($ipd_q_list)>0){ ?>
					<?php foreach($ipd_q_list as $ipqli){ ?>
					var options = {
							title: {
								text: "<?php echo $ipqli['qno']; ?>.<?php echo $ipqli['name']; ?> Feedback"
							},
							subtitles: [{
								text: "As of Given"
							}],
							animationEnabled: true,
							data: [{
								type: "pie",
								startAngle: 40,
								toolTipContent: "<b>{label}</b>: {y}%",
								showInLegend: "true",
								legendText: "{label}",
								indexLabelFontSize: 15,
								indexLabel: "{label} - {y}%",
								dataPoints: [
									{ y: '<?php echo number_format($ipqli['vp_p'], 2); ?>', label: "Very Poor"},
									{ y: <?php echo number_format($ipqli['p_p'], 2); ?>, label: "Poor"},
									{ y: <?php echo number_format($ipqli['a_p'], 2); ?>, label: "Average"},
									{ y: <?php echo number_format($ipqli['p_g'], 2); ?>, label: "Good" },
									{ y: <?php echo number_format($ipqli['e_p'], 2); ?>, label: "Excellent"}
								]
							}]
						};
						$("#ipd<?php echo $ipqli['q_id']; ?>").CanvasJSChart(options);
					<?php } ?>
	<?php } ?>



}
</script>

</head>
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
			<form id="defaultForm" action="<?php echo base_url('dashboard/index'); ?>" method="post">
			<div class="col-md-5 form-group">
					<label class=" control-label">From Date</label>
					<div class="">
						<input type="text" class="form-control datepicker" name="from_date" placeholder="Enter From Date" value="<?php echo isset($f_date)?$f_date:''; ?>" />
					</div>
			</div>
			<div class="col-md-5 form-group">
					<label class=" control-label">To Date</label>
					<div class="">
						<input type="text" class="form-control datepicker" name="to_date" placeholder="Enter From Date" value="<?php echo isset($t_date)?$t_date:''; ?>" />
					</div>
			</div>
			<div class="col-md-2 form-group">
					<label class=" control-label">&nbsp;</label>
					<div class="">
					<button type="submit" class="btn btn-primary">Search</button>
					</div>
			</div>
			</form>
			
			<div class="col-md-6 mt-4">
				<div id="opd_pie_chart" style="height: 300px; width: 100%;"></div>
			</div>
			<div class="col-md-6 mt-4">
				<div id="ipd_pie_chart" style="height: 300px; width: 100%;"></div>
			</div>
			<div class="col-md-6 mt-4">
				<?php if(isset($opd_q_list) && count($opd_q_list)>0){ ?>
					<?php foreach($opd_q_list as $pli){ ?>
						<div class="col-md-12 mt-4">
							<div id="opd<?php echo $pli['q_id']; ?>" style="height: 300px; width: 100%;"></div>
						</div>
					<?php } ?>
				<?php } ?>
			</div>
			<div class="col-md-6 mt-4">
				<?php if(isset($ipd_q_list) && count($ipd_q_list)>0){ ?>
					<?php foreach($ipd_q_list as $ipqli){ ?>
						<div class="col-md-12 mt-4">
							<div id="ipd<?php echo $ipqli['q_id']; ?>" style="height: 300px; width: 100%;"></div>
						</div>
					<?php } ?>
				<?php } ?>
			</div>
			
			
			<!-- ./col -->
		</div>
		<div class="clearfix">&nbsp;</div>
	</section>
	<!-- /.content -->
</div>
<script type="text/javascript">
 $('.datepicker').datepicker({
		   format: 'dd-mm-yyyy',
			autoclose: true,	  
		});
$(document).ready(function() {

   	 $('#defaultForm').bootstrapValidator({
   		fields: {
               from_date: {
                   validators: {
					notEmpty: {
						message: 'From date is required'
					}
				}
               }, to_date: {
                   validators: {
					notEmpty: {
						message: 'TO date is required'
					}
				}
               }, message: {
                   validators: {
					notEmpty: {
						message: 'Comment is required'
					}
				}
               }, 'emp_id[]': {
                  validators: {
					notEmpty: {
						message: 'Employee Name is required'
					}
				}
               }
           }
       });
		$('.datepicker').on('changeDate ', function(e) {
		$('#defaultForm').bootstrapValidator('revalidateField', 'from_date');
		});
		$('.datepicker').on('changeDate ', function(e) {
		$('#defaultForm').bootstrapValidator('revalidateField', 'to_date');
		});
   
   });
</script>