<div class="content-wrapper">
   <section class="content-header mb-4">
      <h1>
         Add Attendance regulation
      </h1>
      <ol class="breadcrumb">
         <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a></li>
         <li class="active">Attendance regulation</li>
      </ol>
   </section>
   <section class="content">
  
      <div class="row">
	  
         <!-- left column -->
         <div class="col-md-12 bg-white">
            <!-- general form elements -->
            <div class=" ">
               <div style="padding:20px;">
                  <form id="defaultForm" method="post" class="form-horizontal" action="<?php echo base_url('employee/attendance_regulationpost'); ?>" enctype="multipart/form-data">
                     	<?php $csrf = array(
								'name' => $this->security->get_csrf_token_name(),
								'hash' => $this->security->get_csrf_hash()
						); ?>
					<input type="hidden" name="<?=$csrf['name'];?>" value="<?=$csrf['hash'];?>" />
					 <fieldset class="scheduler-border">
						<legend class="scheduler-border">Add Attendance regulation</legend>
					 <div class=" row ">
                        <div class=" col-md-6 ">
                           
							<div class="bootstrap-timepicker">
								<div class="form-group">
								  <label class="col-lg-4 control-label">Date</label>

								  <div class="col-md-8">
									<input type="text" class="form-control" name="a_date" readonly value="<?php echo $a_date; ?>">
				
								  </div>
								</div>
							  </div>
							  <div class="bootstrap-timepicker">
								<div class="form-group">
								  <label class="col-lg-4 control-label">Request To</label>

								  <div class="col-md-8">
									<input type="text" name="to_time" class="form-control timepicker">
				
								  </div>
								</div>
							  </div>
							  <div class="bootstrap-timepicker">
								<div class="form-group">
								  <label class="col-lg-4 control-label">Request From</label>

								  <div class="col-md-8">
									<input type="text" name="from_time" class="form-control timepicker">

								  </div>
								</div>
							  </div>
						
						   <div class="form-group ">
                              <label class="col-lg-4 control-label">Reason</label>
                              <div class="col-md-8">
                                 <textarea type="text" class="form-control" name="reason" placeholder="Enter Reason" ></textarea>
                              </div>
                           </div>
						 
						   
						   
                        </div>
						
						
                        <div class="clearfix">&nbsp;</div>
                        <div class="form-group">
                           <div class="col-lg-6 text-center">
                              <button type="submit" class="btn btn-primary  " name="signup" value="Sign up">Update</button>
                           </div>
                        </div>
                  </form>
                  <div class="clearfix">&nbsp;</div>
                  </div>
				   </fieldset>
               </div>
               <!-- /.box -->
            </div>
         </div>
         <!--/.col (right) -->
      </div>
	 
      <!-- /.row -->
   </section>
</div>

<script type="text/javascript">
 
$(document).ready(function() {
	$(".timepicker").timepicker({
     showInputs: false;
   });
   	 $('#defaultForm').bootstrapValidator({
   		fields: {
               adding_time: {
                   validators: {
					notEmpty: {
						message: 'Request Hours is required'
					}
				}
               }, reason: {
                   validators: {
					notEmpty: {
						message: 'Reason is required'
					}
				}
               }
           }
       });
	  
   });
</script>

