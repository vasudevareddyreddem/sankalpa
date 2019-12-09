<div class="content-wrapper">
   <section class="content-header mb-4">
      <h1>
         Leaves day
      </h1>
      <ol class="breadcrumb">
         <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a></li>
         <li><a href="<?php echo base_url('leaves'); ?>"><i class="fa fa-list"></i> list</a></li>
         <li class="active">Leaves Days</li>
      </ol>
   </section>
   <section class="content">
      <div class="row">
         <!-- left column -->
        <div class="col-md-12 bg-white">
            <!-- general form elements -->
            <div class=" ">
               <div style="padding:20px;">
			    <fieldset class="scheduler-border">
						<legend class="scheduler-border">Leaves day</legend>
                  <form id="defaultForm" method="post" class="form-horizontal" action="<?php echo base_url('leaves/daysaddpost'); ?>" enctype="multipart/form-data">
                     	<?php $csrf = array(
								'name' => $this->security->get_csrf_token_name(),
								'hash' => $this->security->get_csrf_hash()
						); ?>
										<input type="hidden" name="<?=$csrf['name'];?>" value="<?=$csrf['hash'];?>" />
										<input type="hidden" name="l_d_id" value="<?php echo isset($l_data['l_d_id'])?$l_data['l_d_id']:''; ?>">

					 <div class=" row ">
                        <div class=" col-md-12">
                           
						   <div class="form-group col-md-6">
                              <label class="col-lg-4 control-label">Casual Leave days</label>
                              <div class="col-md-8">
                                 <input type="text" class="form-control" name="causal" value="<?php echo isset($l_data['causal'])?$l_data['causal']:''; ?>" placeholder="Enter Number of days" />
                              </div>
                           </div>
						   <div class="form-group col-md-6">
                              <label class="col-lg-4 control-label">Sick Leave days</label>
                              <div class="col-md-8">
                                 <input type="text" class="form-control" name="sick" value="<?php echo isset($l_data['sick'])?$l_data['sick']:''; ?>" placeholder="Enter Number of days" />
                              </div>
                           </div>
						   <div class="form-group col-md-6">
                              <label class="col-lg-4 control-label">Saturday Working Day</label>
                              <div class="col-md-8">
                                 <select name="sat_day" class="form-control">
								 <option value="">Select</option>
								 <option value="1" <?php if($l_data['sat_day']=='1'){ echo "selected";} ?>>Yes</option>
								 <option value="0" <?php if($l_data['sat_day']=='0'){ echo "selected";} ?>>NO</option>
								 </select>
                              </div>
                           </div>
						   
                        </div>
						<div class="form-group">
                           <div class="col-lg-6 text-center">
                              <button type="submit" class="btn btn-primary  " name="signup" value="Sign up">Update</button>
                           </div>
                        </div>
                  </form>
				   </fieldset>
                  <div class="clearfix">&nbsp;</div>
                  </div>
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

   	 $('#defaultForm').bootstrapValidator({
   		fields: {
               causal: {
                   validators: {
					notEmpty: {
						message: 'Causal is required'
					}
				}
               },sat_day: {
                   validators: {
					notEmpty: {
						message: 'Working Day is required'
					}
				}
               }, sick: {
                   validators: {
					notEmpty: {
						message: 'Sick is required'
					}
				}
               }
           }
       });
		
   });
</script>

