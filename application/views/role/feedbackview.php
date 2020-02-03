<?php //echo '<pre>';print_r($f_d);exit; ?>
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
       Feedback View
      </h1>
		<ol class="breadcrumb">
			<li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a>
			</li>
			<li class="active">Feedback View</li>
		</ol>
	</section>
	<!-- Main content -->
	<section class="content">
		<div class="box">
		<div class="box-header bg-primary">
				<div class="col-md-6">
					<div class="col-md-6">
						<a class="btn btn-default st-btn add-student-btn" href="<?php echo base_url('user/feedback'); ?>"><i class="fa fa-plus"></i>Back</a>
					</div>
					<div class="col-md-6">
						<a class="btn btn-default st-btn add-student-btn pull-right" href="<?php echo base_url('feedback/manufedsubmit/'.$f_d['f_b_id']); ?>"><i class="fa fa-envelope"></i>Send</a>
					</div>
				</div>
			</div>
			<!-- /.box-header -->
			<div class="box-body table-responsive">
				<table  class="table  table-bordered" style="width:100%">
      
        <tbody>
			<tr>
                <td>Name</td>
                <td><?php echo isset($f_d['name'])?$f_d['name']:''; ?></td>
            </tr>
				<tr>
                <td>Mobile Number</td>
                <td><?php echo isset($f_d['phone_no'])?$f_d['phone_no']:''; ?></td>
            </tr> 
			
			<tr>
                <td>Location</td>
                <td><?php echo isset($f_d['location'])?$f_d['location']:''; ?></td>
            </tr>			
			<tr>
                <td>Department</td>
                <td><?php echo isset($f_d['department'])?$f_d['department']:''; ?></td>
            </tr>			
			<tr>
                <td>Source</td>
                <td><?php echo isset($f_d['source'])?$f_d['source']:''; ?></td>
            </tr>
			
			
			<?php foreach($f_q_d as $li){ ?>
				<tr>
					<td><?php echo $li['qno']; ?>. <?php echo $li['name']; ?></td>
					<td style="width:50%"><?php echo isset($li['answer'])?$li['answer']:''; ?></td>
				</tr>
			<?php } ?>
			<?php if($f_d['type']=='OPD'){ ?>
				<tr>
                <td><?php echo count($f_q_d)+1; ?>. Any Other Comments</td>
                <td style="width:50%"><?php echo isset($f_d['comment'])?$f_d['comment']:''; ?></td>
            </tr>
			
			<?php }else{ ?>
			<tr>
                <td><?php echo count($f_q_d)+1; ?>. Do you recommend Sankalpa to others</td>
                <td><?php echo isset($f_d['comment'])?$f_d['comment']:''; ?></td>
            </tr>
			<tr>
                <td><?php echo count($f_q_d)+2; ?>. Any Other Comments</td>
                <td style="width:50%"><?php echo isset($f_d['comment'])?$f_d['comment']:''; ?></td>
            </tr>
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
        "order": [[ 8, "desc" ]]
    } );
} );
	$(function () {
	    //Initialize Select2 Elements
	    $(".select2").select2();


	
	   
	  });
</script>