<head>
<style>
.canvasjs-chart-toolbar button{
		display:none !important;
}
.canvasjs-chart-credit{
display:none;	
}
.highcharts-container {
    width:100% !important;
    height:100% !important;
}
.nav-tabs-custom>.nav-tabs>li.active {
    border-top-color: #3f399d;
	background:#3f399d;
	color:#fff;
}

.nav-tabs-custom>.nav-tabs>li.active>a, .nav-tabs-custom>.nav-tabs>li.active:hover>a {
    background-color: #3f399d;
    color: #fff;
}
.nav-tabs>li.active>a, .nav-tabs>li.active>a:focus, .nav-tabs>li.active>a:hover {
    color: #555;
    cursor: default;
    background-color: #fff;
    border: none;

}

</style>
<script src="<?php echo base_url(); ?>assets/back/js/jquery.canvasjs.min.js"></script>
<script>
window.onload = function () {
var work_options = {
		exportEnabled: true,
		title:{
			text: "Prioritization wise Task graph",
			fontWeight:'bold',
			fontFamily:'Fira Sans',
			padding:'5',
			fontColor:'#3f399d',
			
		},
		axisX: {
			valueFormatString: "DD"
		},
		axisY: {
			title: "Task range",
			includeZero: false,
		},
		legend: {
		itemclick: toggleDataSeries
		},
		data: [
			{
				type: "column",
				name: "Completed",
				color: "green",
				showInLegend: true,      
				yValueFormatString: "#,##0.# Task",
				dataPoints: [
					{ label: "High", y: <?php echo isset($e_high_com['cnt'])?$e_high_com['cnt']:'0'; ?> },
					{ label: "Medium",  y: <?php echo isset($e_medi_com['cnt'])?$e_medi_com['cnt']:'0'; ?> },
					{ label: "Low",  y: <?php echo isset($e_low_com['cnt'])?$e_low_com['cnt']:'0'; ?> }
				]
			},{
				type: "column",
				name: "Pending",
				color: "red",
				showInLegend: true,
				yValueFormatString: "#,##0.# Task",
				dataPoints: [
					{ label: "High", y: <?php echo isset($e_high_pen['cnt'])?$e_high_pen['cnt']:'0'; ?> },
					{ label: "Medium",  y: <?php echo isset($e_medi_pen['cnt'])?$e_medi_pen['cnt']:'0'; ?> },
					{ label: "Low",  y: <?php echo isset($e_low_pen['cnt'])?$e_low_pen['cnt']:'0'; ?> }
				]
			},{
				type: "column",
				name: "In Progress",
				color: "#aaa",
				showInLegend: true,
				yValueFormatString: "#,##0.# Task",
				dataPoints: [
					{ label: "High", y: <?php echo isset($e_high_inp['cnt'])?$e_high_inp['cnt']:'0'; ?> },
					{ label: "Medium",  y: <?php echo isset($e_medi_inp['cnt'])?$e_medi_inp['cnt']:'0'; ?> },
					{ label: "Low",  y: <?php echo isset($e_low_inp['cnt'])?$e_low_inp['cnt']:'0'; ?> }
				]
			}
			
			]
	};
	$("#chartContainer").CanvasJSChart(work_options);
	chart.render();
	function toggleDataSeries(e) {
	if (typeof (e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
		e.dataSeries.visible = false;
	} else {
		e.dataSeries.visible = true;
	}
	e.chart.render();
	
	}
}
</script>
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
			<div class="clearfix">&nbsp;</div>
			<div class="col-md-12 mt-4">
				<div id="chartContainer" style="height: 400px; width: 100%;"></div>
				<div class="clearfix">&nbsp;</div>
			</div>
		
		</div>
	</section>
	<!-- /.content -->
</div>
