<div class="content-wrapper">
   <section class="content-header mb-4">
      <h1>
         Apply Resignation
      </h1>
      <ol class="breadcrumb">
         <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a></li>
         <li><a href="<?php echo base_url('resignation/lists'); ?>"><i class="fa fa-list"></i> list</a></li>
         <li class="active">Resignation</li>
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
						<legend class="scheduler-border">Apply Resignation</legend>
                  <form id="defaultForm" method="post" autocomplete="off" class="form-horizontal" action="<?php echo base_url('resignation/addpost'); ?>" enctype="multipart/form-data">
                     	<?php $csrf = array(
								'name' => $this->security->get_csrf_token_name(),
								'hash' => $this->security->get_csrf_hash()
						); ?>
										<input type="hidden" name="<?=$csrf['name'];?>" value="<?=$csrf['hash'];?>" />

					 <div class=" row ">
                        <div class=" col-md-12">
                           
						   <div class="form-group col-md-12">
                              <label class="col-lg-2 control-label">Reason</label>
                              <div class="col-md-10">
                                 <textarea type="text" class="form-control" name="reason" placeholder="Enter Reason" /></textarea>
                              </div>
                           </div>
						   
						   <div class="form-group col-md-12">
                              <label class="col-lg-2 control-label"><input type="checkbox" name="check_box" ></label>
                              <div class="col-md-10">
                                I hearby agree and request to accept my resignation and process my notice period as per the management decision.
                              </div>
                           </div>
                        </div>
						<div class="form-group">
                           <div class="col-lg-6 text-center">
                              <button type="submit" class="btn btn-primary  " name="signup" value="Sign up">Submit</button>
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
               reason: {
                   validators: {
					notEmpty: {
						message: 'Reason is required'
					}
				}
               }, check_box: {
                   validators: {
					notEmpty: {
						message: 'Accept is required'
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

