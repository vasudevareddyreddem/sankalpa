<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
       Leaves List
      </h1>
		<ol class="breadcrumb">
			<li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a>
			</li>
			<li class="active">Leaves List</li>
		</ol>
	</section>
	<!-- Main content -->
	<section class="content">
		<div class="box">
			<div class="box-header bg-primary">
				<div class="col-md-6">
					<div class="">	<a class="btn btn-default st-btn add-student-btn" href="<?php echo base_url('leaves/add'); ?>"><i class="fa fa-plus"></i> Apply</a>
						
					</div>
				</div>
			</div>
			<!-- /.box-header -->
			<div class="box-body table-responsive">
				<table id="example1" class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>Employee Name</th>
							<th>Employee Mobile</th>
							<th>Date</th>
							<th>From Date</th>
							<th>To Date</th>
							<th>Hours</th>
							<th>Reason</th>
							<th>Craeted Date & Time</th>
							<th>Status</th>
							<th>Approved/rejected By</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
					<?php if(isset($p_list) && count($p_list)>0){ ?>
					<?php foreach($p_list as $li){ ?>
						<tr>
							<td><?php echo isset($li['name'])?$li['name']:''; ?></td>
							<td><?php echo isset($li['mobile'])?$li['mobile']:''; ?></td>
							<td><?php echo isset($li['a_date'])?$li['a_date']:''; ?></td>
							<td><?php echo isset($li['from_time'])?$li['from_time']:''; ?></td>
							<td><?php echo isset($li['to_time'])?$li['to_time']:''; ?></td>
							<td><?php echo isset($li['adding_time'])?$li['adding_time']:''; ?></td>
							<td><?php echo isset($li['reason'])?$li['reason']:''; ?></td>
							<td><?php echo isset($li['created_at'])?$li['created_at']:''; ?></td>
							<td><?php if($li['status']==1){ echo "Approved";}else if($li['status']==0){ echo "Pending"; }else if($li['status']==2){ echo "Rejected"; } ?></td>
							<td><?php echo isset($li['updated_by'])?$li['updated_by']:''; ?></td>
							<td> 
							<?php if($li['status']==0){ ?>
									<a href="<?php echo base_url('pending/accept/'.base64_encode($li['a_r_id'])); ?>" data-toggle="tooltip" title="Accept" class="confirmation">Accept</a> &nbsp; |
									<a href="javascript;void(0);" onclick="admindedelete('<?php echo base64_encode($li['a_r_id']) ?>');admindedeletemsg();" data-toggle="modal" data-target="#myModal" title="Reject">Reject</a>

							<?php } ?>
							</td>
							
						
							
						</tr>
					<?php } ?>
					<?php } ?>
					</tbody>
					<tfoot>
						<tr>
							<th>Employee Name</th>
							<th>Employee Mobile</th>
							<th>Date</th>
							<th>From Date</th>
							<th>To Date</th>
							<th>Hours</th>
							<th>Reason</th>
							<th>Craeted Date & Time</th>
							<th>Status</th>
							<th>Approved/rejected By</th>
							<th>Action</th>
						</tr>
					</tfoot>
				</table>
			</div>
			<!-- /.box-body -->
		</div>
		<!-- /.row -->
	</section>
	<!-- /.content -->
</div>

<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
			
			<div style="padding:10px">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<h4 style="pull-left" class="modal-title">Confirmation</h4>
			</div>
			<form action ="<?php echo base_url('pending/reject'); ?>" method="post">
			<div class="modal-body">
			<div class="alert alert-danger alert-dismissible" id="errormsg" style="display:none;"></div>
			  <div class="row">
				<div id="content1" class="col-xs-12 col-xl-12 form-group">
				<input type="hidden" name="lid" id="lid" value="">
					<input type="text" class="form-control" name="resson" id="resson" placeholder="Enter Reason" required>
				</div>
				<div class="col-xs-6 col-md-6">
				  <button type="button" aria-label="Close" data-dismiss="modal" class="btn  blueBtn">Cancel</button>
				</div>
				
				<div class="col-xs-6 col-md-6">
                <button  class="btn  blueBtn popid" style="text-decoration:none;float:right;"> <span aria-hidden="true">Ok</span></button>
				</div>
			 </div>
		  </div>
		  </form>
      </div>
      
    </div>
  </div>
<script>
function admindedelete(id){
	$("#lid").val(id);
}
$(document).ready(function() {
      $('.confirmation').on('click', function() {
        return confirm('Are you sure?');
      });
    });
	$(function () {
	    $("#example1").DataTable();	   
	  });
</script>