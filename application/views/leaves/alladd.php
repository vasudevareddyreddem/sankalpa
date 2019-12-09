<div class="content-wrapper">
   <section class="content-header mb-4">
      <h1>
         Apply Leave
      </h1>
      <ol class="breadcrumb">
         <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a></li>
         <li><a href="<?php echo base_url('leaves'); ?>"><i class="fa fa-list"></i> list</a></li>
         <li class="active">Leaves</li>
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
						<legend class="scheduler-border">Apply Leave</legend>
                  <form id="defaultForm" method="post" class="form-horizontal" action="<?php echo base_url('leaves/adminaddpost'); ?>" enctype="multipart/form-data">
                     	<?php $csrf = array(
								'name' => $this->security->get_csrf_token_name(),
								'hash' => $this->security->get_csrf_hash()
						); ?>
										<input type="hidden" name="<?=$csrf['name'];?>" value="<?=$csrf['hash'];?>" />

					 <div class=" row ">
                        <div class=" col-md-12">
                           
						  
						   <div class="form-group col-md-6">
                              <label class="col-lg-4 control-label">From Date</label>
                              <div class="col-md-8">
                                 <input type="text" class="form-control datepicker" name="from_date" placeholder="Enter From Date" />
                              </div>
                           </div>
						   <div class="form-group col-md-6">
                              <label class="col-lg-4 control-label">TO Date</label>
                              <div class="col-md-8">
                                 <input type="text" class="form-control datepicker" name="to_date" placeholder="Enter TO Date" />
                              </div>
                           </div>
						   <div class="form-group col-md-6">
                              <label class="col-lg-4 control-label">Leave Type</label>
                              <div class="col-md-8">
                                 <select name="l_type" class="form-control">
								 <option value="">Select</option>
								 <option value="1">Sick Leave</option>
								 <option value="2">Causal Leave</option>
								 <option value="3">Reseved holiday</option>
								 <option value="4">Additional reserved holiday</option>
								 </select>
                              </div>
                           </div>
						   <div class="form-group col-md-6">
                              <label class="col-lg-4 control-label">Comment</label>
                              <div class="col-md-8">
                                 <textarea type="text" class="form-control" name="message" placeholder="Enter Message" /></textarea>
                              </div>
                           </div>
						    <div class="form-group col-md-6">
                              <label class="col-lg-4 control-label">Employee</label>
                              <div class="col-md-8">
                                <select class="form-control" name="a_id">
									<option value="">Select</option>
									<?php if(isset($emp_list) && count($emp_list)>0){ ?>
										<?php foreach($emp_list as $li){ ?>
											<option value="<?php echo $li['a_id']; ?>"><?php echo $li['name']; ?></option>
										<?php } ?>										
									<?php } ?>									
								
								</select>
                              </div>
                           </div>
                        </div>
						<div class="form-group">
                           <div class="col-lg-6 text-center">
                              <button type="submit" class="btn btn-primary  " name="signup" value="Sign up">Apply</button>
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
               }, l_type: {
                  validators: {
					notEmpty: {
						message: 'Leave Type is required'
					}
				}
               }, a_id: {
                  validators: {
					notEmpty: {
						message: 'Employee is required'
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
