<head>
<script src="<?php echo base_url(); ?>assets/back/js/jquery.canvasjs.min.js"></script>
	<?php 
$op_vp_dec1=$op_vp_jan1=$op_vp_feb1=$op_vp_mar1=$op_vp_apr1=$op_vp_may1=$op_vp_jun1=$op_vp_jul1=$op_vp_aug1=$op_vp_sep1=$op_vp_oct1=$op_vp_nov1=0;
	if(isset($opd_very_poor) && count($opd_very_poor)>0){
		foreach($opd_very_poor as $cri){
		$dat = explode("-", $cri['created_at']);
			if($dat[1] == 12)
			{
			$op_vp_dec1++;
			}
			if($dat[1] == 11)
			{
				$op_vp_nov1++;
			}
			if($dat[1] == 10)
			{
				$op_vp_oct1++;
			}
			if($dat[1] == '09')
			{
				$op_vp_sep1++;
			}if($dat[1] == '08')
			{
				$op_vp_aug1++;
			}if($dat[1] == '07')
			{
				$op_vp_jul1++;
			}if($dat[1] == '06')
			{
				$op_vp_jun1++;
			}if($dat[1] == '05')
			{
				$op_vp_may1++;
			}if($dat[1] == 04)
			{
				$op_vp_apr1++;
			}if($dat[1] == 03)
			{
				$op_vp_mar1++;
			}if($dat[1] == 02)
			{
				$op_vp_feb1++;
			}if($dat[1] == 01)
			{
				$op_vp_jan1++;
			}
		}	
	}
	$op_p_dec1=$op_p_jan1=$op_p_feb1=$op_p_mar1=$op_p_apr1=$op_p_may1=$op_p_jun1=$op_p_jul1=$op_p_aug1=$op_p_sep1=$op_p_oct1=$op_p_nov1=0;
	if(isset($opd_poor) && count($opd_poor)>0){
		foreach($opd_poor as $cri){
		$dat = explode("-", $cri['created_at']);
			if($dat[1] == 12)
			{
			$op_p_dec1++;
			}
			if($dat[1] == 11)
			{
				$op_p_nov1++;
			}
			if($dat[1] == 10)
			{
				$op_p_oct1++;
			}
			if($dat[1] == '09')
			{
				$op_p_sep1++;
			}if($dat[1] == '08')
			{
				$op_p_aug1++;
			}if($dat[1] == '07')
			{
				$op_p_jul1++;
			}if($dat[1] == '06')
			{
				$op_p_jun1++;
			}if($dat[1] == '05')
			{
				$op_p_may1++;
			}if($dat[1] == 04)
			{
				$op_p_apr1++;
			}if($dat[1] == 03)
			{
				$op_p_mar1++;
			}if($dat[1] == 02)
			{
				$op_p_feb1++;
			}if($dat[1] == 01)
			{
				$op_p_jan1++;
			}
		}	
	}
	$op_a_dec1=$op_a_jan1=$op_a_feb1=$op_a_mar1=$op_a_apr1=$op_a_may1=$op_a_jun1=$op_a_jul1=$op_a_aug1=$op_a_sep1=$op_a_oct1=$op_a_nov1=0;
	if(isset($opd_average) && count($opd_average)>0){
		foreach($opd_average as $cri){
		$dat = explode("-", $cri['created_at']);
			if($dat[1] == 12)
			{
			$op_a_dec1++;
			}
			if($dat[1] == 11)
			{
				$op_a_nov1++;
			}
			if($dat[1] == 10)
			{
				$op_a_oct1++;
			}
			if($dat[1] == '09')
			{
				$op_a_sep1++;
			}if($dat[1] == '08')
			{
				$op_a_aug1++;
			}if($dat[1] == '07')
			{
				$op_a_jul1++;
			}if($dat[1] == '06')
			{
				$op_a_jun1++;
			}if($dat[1] == '05')
			{
				$op_a_may1++;
			}if($dat[1] == 04)
			{
				$op_a_apr1++;
			}if($dat[1] == 03)
			{
				$op_a_mar1++;
			}if($dat[1] == 02)
			{
				$op_a_feb1++;
			}if($dat[1] == 01)
			{
				$op_a_jan1++;
			}
		}	
	}
	$op_g_dec1=$op_g_jan1=$op_g_feb1=$op_g_mar1=$op_g_apr1=$op_g_may1=$op_g_jun1=$op_g_jul1=$op_g_aug1=$op_g_sep1=$op_g_oct1=$op_g_nov1=0;
	if(isset($opd_good) && count($opd_good)>0){
		foreach($opd_good as $cri){
		$dat = explode("-", $cri['created_at']);
			if($dat[1] == 12)
			{
			$op_g_dec1++;
			}
			if($dat[1] == 11)
			{
				$op_g_nov1++;
			}
			if($dat[1] == 10)
			{
				$op_g_oct1++;
			}
			if($dat[1] == '09')
			{
				$op_g_sep1++;
			}if($dat[1] == '08')
			{
				$op_g_aug1++;
			}if($dat[1] == '07')
			{
				$op_g_jul1++;
			}if($dat[1] == '06')
			{
				$op_g_jun1++;
			}if($dat[1] == '05')
			{
				$op_g_may1++;
			}if($dat[1] == 04)
			{
				$op_g_apr1++;
			}if($dat[1] == 03)
			{
				$op_g_mar1++;
			}if($dat[1] == 02)
			{
				$op_g_feb1++;
			}if($dat[1] == 01)
			{
				$op_g_jan1++;
			}
		}	
	}
	$op_e_dec1=$op_e_jan1=$op_e_feb1=$op_e_mar1=$op_e_apr1=$op_e_may1=$op_e_jun1=$op_e_jul1=$op_e_aug1=$op_e_sep1=$op_e_oct1=$op_e_nov1=0;
	if(isset($opd_excellent) && count($opd_excellent)>0){
		foreach($opd_excellent as $cri){
		$dat = explode("-", $cri['created_at']);
			if($dat[1] == 12)
			{
			$op_e_dec1++;
			}
			if($dat[1] == 11)
			{
				$op_e_nov1++;
			}
			if($dat[1] == 10)
			{
				$op_e_oct1++;
			}
			if($dat[1] == '09')
			{
				$op_e_sep1++;
			}if($dat[1] == '08')
			{
				$op_e_aug1++;
			}if($dat[1] == '07')
			{
				$op_e_jul1++;
			}if($dat[1] == '06')
			{
				$op_e_jun1++;
			}if($dat[1] == '05')
			{
				$op_e_may1++;
			}if($dat[1] == 04)
			{
				$op_e_apr1++;
			}if($dat[1] == 03)
			{
				$op_e_mar1++;
			}if($dat[1] == 02)
			{
				$op_e_feb1++;
			}if($dat[1] == 01)
			{
				$op_e_jan1++;
			}
		}	
	}
	?>
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


	
	/* vvvvv*/
	
	
	var pl_options = {
		title:{
			text: "<?php echo isset($ptype)?$ptype:'All '; ?> Patient feedback graph"
		},
		axisX: {
			valueFormatString: "DD"
		},
		axisY: {
			title: "Range",
			includeZero: false,
		},
		
		animationEnabled: true,
		data: [
			{
				name: "Very Poor",
				type: "spline",
				showInLegend: true,
				dataPoints: [
					{ label: "January", y: <?php echo isset($op_vp_dec1)?$op_vp_dec1:''; ?> },
					{ label: "February", y: <?php echo isset($op_vp_feb1)?$op_vp_feb1:''; ?> },
					{ label: "March", y: <?php echo isset($op_vp_mar1)?$op_vp_mar1:''; ?> },
					{ label: "April", y: <?php echo isset($op_vp_apr1)?$op_vp_apr1:''; ?> },
					{ label: "May", y: <?php echo isset($op_vp_may1)?$op_vp_may1:''; ?> },
					{ label: "June", y: <?php echo isset($op_vp_jun1)?$op_vp_jun1:''; ?> },
					{ label: "July", y: <?php echo isset($op_vp_jul1)?$op_vp_jul1:''; ?> },
					{ label: "August", y: <?php echo isset($op_vp_aug1)?$op_vp_aug1:''; ?> },
					{ label: "September", y: <?php echo isset($op_vp_sep1)?$op_vp_sep1:''; ?> },
					{ label: "October", y: <?php echo isset($op_vp_oct1)?$op_vp_oct1:''; ?> },
					{ label: "November", y: <?php echo isset($op_vp_nov1)?$op_vp_nov1:''; ?> },
					{ label: "December", y: <?php echo isset($op_vp_dec1)?$op_vp_dec1:''; ?> },
				]
			},{
				name: "Poor",
				type: "spline",
				showInLegend: true,
				dataPoints: [
					{ label: "January", y: <?php echo isset($op_p_jan1)?$op_p_jan1:''; ?> },
					{ label: "February", y: <?php echo isset($op_p_feb1)?$op_p_feb1:''; ?> },
					{ label: "March", y: <?php echo isset($op_p_mar1)?$op_p_mar1:''; ?> },
					{ label: "April", y: <?php echo isset($op_p_apr1)?$op_p_apr1:''; ?> },
					{ label: "May", y: <?php echo isset($op_p_may1)?$op_p_may1:''; ?> },
					{ label: "June", y: <?php echo isset($op_p_jun1)?$op_p_jun1:''; ?> },
					{ label: "July", y: <?php echo isset($op_p_jul1)?$op_p_jul1:''; ?> },
					{ label: "August", y: <?php echo isset($op_p_aug1)?$op_p_aug1:''; ?> },
					{ label: "September", y: <?php echo isset($op_p_sep1)?$op_p_sep1:''; ?> },
					{ label: "October", y: <?php echo isset($op_p_oct1)?$op_p_oct1:''; ?> },
					{ label: "November", y: <?php echo isset($op_p_nov1)?$op_p_nov1:''; ?> },
					{ label: "December", y: <?php echo isset($op_p_dec1)?$op_p_dec1:''; ?> },
				]
			},{
				name: "Average",
				type: "spline",
				showInLegend: true,
				dataPoints: [
					{ label: "January", y: <?php echo isset($op_a_jan1)?$op_a_jan1:''; ?> },
					{ label: "February", y: <?php echo isset($op_a_feb1)?$op_a_feb1:''; ?> },
					{ label: "March", y: <?php echo isset($op_a_mar1)?$op_a_mar1:''; ?> },
					{ label: "April", y: <?php echo isset($op_a_apr1)?$op_a_apr1:''; ?> },
					{ label: "May", y: <?php echo isset($op_a_may1)?$op_a_may1:''; ?> },
					{ label: "June", y: <?php echo isset($op_a_jun1)?$op_a_jun1:''; ?> },
					{ label: "July", y: <?php echo isset($op_a_jul1)?$op_a_jul1:''; ?> },
					{ label: "August", y: <?php echo isset($op_a_aug1)?$op_a_aug1:''; ?> },
					{ label: "September", y: <?php echo isset($op_a_sep1)?$op_a_sep1:''; ?> },
					{ label: "October", y: <?php echo isset($op_a_oct1)?$op_a_oct1:''; ?> },
					{ label: "November", y: <?php echo isset($op_a_nov1)?$op_a_nov1:''; ?> },
					{ label: "December", y: <?php echo isset($op_a_dec1)?$op_a_dec1:''; ?> },
				]
			},{
				name: "Good",
				type: "spline",
				showInLegend: true,
				dataPoints: [
					{ label: "January", y: <?php echo isset($op_g_jan1)?$op_g_jan1:''; ?> },
					{ label: "February", y: <?php echo isset($op_g_feb1)?$op_g_feb1:''; ?> },
					{ label: "March", y: <?php echo isset($op_g_mar1)?$op_g_mar1:''; ?> },
					{ label: "April", y: <?php echo isset($op_g_apr1)?$op_g_apr1:''; ?> },
					{ label: "May", y: <?php echo isset($op_g_may1)?$op_g_may1:''; ?> },
					{ label: "June", y: <?php echo isset($op_g_jun1)?$op_g_jun1:''; ?> },
					{ label: "July", y: <?php echo isset($op_g_jul1)?$op_g_jul1:''; ?> },
					{ label: "August", y: <?php echo isset($op_g_aug1)?$op_g_aug1:''; ?> },
					{ label: "September", y: <?php echo isset($op_g_sep1)?$op_g_sep1:''; ?> },
					{ label: "October", y: <?php echo isset($op_g_oct1)?$op_g_oct1:''; ?> },
					{ label: "November", y: <?php echo isset($op_g_nov1)?$op_g_nov1:''; ?> },
					{ label: "December", y: <?php echo isset($op_g_dec1)?$op_g_dec1:''; ?> },
				]
			},{
				name: "Excellent",
				type: "spline",
				showInLegend: true,
				dataPoints: [
					{ label: "January", y: <?php echo isset($op_e_jan1)?$op_e_jan1:''; ?> },
					{ label: "February", y: <?php echo isset($op_e_feb1)?$op_e_feb1:''; ?> },
					{ label: "March", y: <?php echo isset($op_e_mar1)?$op_e_mar1:''; ?> },
					{ label: "April", y: <?php echo isset($op_e_apr1)?$op_e_apr1:''; ?> },
					{ label: "May", y: <?php echo isset($op_e_may1)?$op_e_may1:''; ?> },
					{ label: "June", y: <?php echo isset($op_e_jun1)?$op_e_jun1:''; ?> },
					{ label: "July", y: <?php echo isset($op_e_jul1)?$op_e_jul1:''; ?> },
					{ label: "August", y: <?php echo isset($op_e_aug1)?$op_e_aug1:''; ?> },
					{ label: "September", y: <?php echo isset($op_e_sep1)?$op_e_sep1:''; ?> },
					{ label: "October", y: <?php echo isset($op_e_oct1)?$op_e_oct1:''; ?> },
					{ label: "November", y: <?php echo isset($op_e_nov1)?$op_e_nov1:''; ?> },
					{ label: "December", y: <?php echo isset($op_e_dec1)?$op_e_dec1:''; ?> },
				]
			},
			
			]
	};
	$("#all_opd_pie_chart").CanvasJSChart(pl_options);
	chart.render();
	
	
	
	/* vvvvv*/
	

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
			
			<form id="" action="<?php echo base_url('dashboard/index'); ?>" method="post">
			<div class="col-md-4 form-group">
				<label class=" control-label">Patient Type</label>
				<div class="">
				<select class="form-control" name="ptype" required>
					<option value="">select</option>
					<option value="OPD" <?php if($ptype=='OPD'){ echo "selected";} ?>>OPD</option>
					<option value="IPD" <?php if($ptype=='IPD'){ echo "selected";} ?>>IPD</option>
				</select>
			</div>
			</div>
			<div class="col-md-3 form-group">
					<label class=" control-label">From Date</label>
					<div class="">
						<input type="text" class="form-control datepicker" name="pfrom_date" placeholder="Enter From Date" value="<?php echo isset($f_date)?$f_date:''; ?>" />
					</div>
			</div>
			<div class="col-md-3 form-group">
					<label class=" control-label">To Date</label>
					<div class="">
						<input type="text" class="form-control datepicker" name="pto_date" placeholder="Enter From Date" value="<?php echo isset($t_date)?$t_date:''; ?>" />
					</div>
			</div>			
			<div class="col-md-2 form-group">
					<label class=" control-label">&nbsp;</label>
					<div class="">
					<button type="submit" class="btn btn-primary">Search</button>
					</div>
			</div>
			</form>
			<div class="clearfix">&nbsp;</div>
			<div class="col-md-12 mt-4">
				<div id="all_opd_pie_chart" style="height: 300px; width: 100%;"></div>
			</div>
			<div class="clearfix">&nbsp;</div>
			
			
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
						<div class=" mt-4">
							<div id="opd<?php echo $pli['q_id']; ?>" style="height: 300px; width: 100%;"></div>
						</div>
					<?php } ?>
				<?php } ?>
			</div>
			<div class="col-md-6 mt-4">
				<?php if(isset($ipd_q_list) && count($ipd_q_list)>0){ ?>
					<?php foreach($ipd_q_list as $ipqli){ ?>
						<div class=" mt-4">
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