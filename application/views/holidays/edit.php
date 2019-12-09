<div class="content-wrapper">
   <section class="content-header mb-4">
      <h1>
         Edit Holiday
      </h1>
      <ol class="breadcrumb">
         <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a></li>
         <li><a href="<?php echo base_url('document'); ?>"><i class="fa fa-list"></i> Add</a></li>
         <li class="active">Holidays</li>
      </ol>
   </section>
   <section class="content">
      <div class="row">
         <!-- left column -->
         <div class="col-md-12 bg-white">
            <!-- general form elements -->
            <div class=" ">
               <div style="padding:20px;">
                  <form id="defaultForm" method="post" class="form-horizontal" action="<?php echo base_url('holidays/editpost'); ?>" enctype="multipart/form-data">
                     	<?php $csrf = array(
								'name' => $this->security->get_csrf_token_name(),
								'hash' => $this->security->get_csrf_hash()
						); ?>
						<input type="hidden" name="<?=$csrf['name'];?>" value="<?=$csrf['hash'];?>" />
						<input type="hidden" name="d_id" value="<?php echo isset($d['d_id'])?$d['d_id']:''; ?>">
						 <fieldset class="scheduler-border">
						 <legend class="scheduler-border">Edit Holiday</legend>
					 <div class=" row ">
                        <div class=" col-md-6 ">
                           
						   <div class="form-group ">
                              <label class="col-lg-4 control-label">Date</label>
                              <div class="col-md-8">
                                 <input type="text" class="form-control datepicker" name="date" value="<?php echo isset($d['date'])?$d['date']:''; ?>" placeholder="Enter Date" />
                              </div>
                           </div>
						   <div class="form-group ">
                              <label class="col-lg-4 control-label">Festival</label>
                              <div class="col-md-8">
                                 <input type="text" class="form-control" name="festival" value="<?php echo isset($d['festival'])?$d['festival']:''; ?>" placeholder="Enter Festival" />
                              </div>
                           </div>
						   <div class="form-group ">
                              <label class="col-lg-4 control-label">Day Name</label>
                              <div class="col-md-8">
                                 <input type="text" class="form-control" name="day_name" value="<?php echo isset($d['day_name'])?$d['day_name']:''; ?>" placeholder="Enter Day Name" />
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
   	 $('#defaultForm').bootstrapValidator({
   		fields: {
               date: {
                   validators: {
					notEmpty: {
						message: 'Date is required'
					}
				}
               }, festival: {
                   validators: {
					notEmpty: {
						message: 'Festival is required'
					}
				}
               },day_name: {
                   validators: {
					notEmpty: {
						message: 'Day Name is required'
					}
				}
               }
           }
       });
	   $('.datepicker').on('changeDate ', function(e) {
		$('#defaultForm').bootstrapValidator('revalidateField', 'date');
		});
   
   });
</script>

