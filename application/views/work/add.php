<div class="content-wrapper">
   <section class="content-header mb-4">
      <h1>
         Assign Work
      </h1>
      <ol class="breadcrumb">
         <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a></li>
         <li><a href="<?php echo base_url('leaves'); ?>"><i class="fa fa-list"></i> list</a></li>
         <li class="active">Assign Work</li>
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
						<legend class="scheduler-border">Assign Work</legend>
                  <form id="defaultForm" method="post" autocomplete="off" class="form-horizontal" action="<?php echo base_url('assignwork/addpost'); ?>" enctype="multipart/form-data">
                     	<?php $csrf = array(
								'name' => $this->security->get_csrf_token_name(),
								'hash' => $this->security->get_csrf_hash()
						); ?>
										<input type="hidden" name="<?=$csrf['name'];?>" value="<?=$csrf['hash'];?>" />

					 <div class=" row ">
                        <div class=" col-md-12">
                           
						   <div class="form-group col-md-6">
                              <label class="col-lg-4 control-label">Assigned date</label>
                              <div class="col-md-8">
                                 <input type="text" class="form-control datepicker" name="from_date" placeholder="Select Assigned date" value="<?php echo isset($l_da)?$l_da:''; ?>" />
                              </div>
                           </div>
						   <div class="form-group col-md-6">
                              <label class="col-lg-4 control-label">Expected date of completion</label>
                              <div class="col-md-8">
                                 <input type="text" class="form-control datepicker" name="to_date" placeholder="Select Expected date of completion" value="<?php echo isset($l_da)?$l_da:''; ?>" />
                              </div>
                           </div>
						   <div class="form-group col-md-6">
                              <label class="col-lg-4 control-label">Prioritization</label>
                              <div class="col-md-8">
                                 <select name="prioritization" class="form-control" >
								 <option value="">Select</option>
									<option value="High">High</option>
									<option value="Low">Low</option>
									<option value="Medium">Medium</option>
								 </select>
                              </div>
                           </div> 
						   <div class="form-group col-md-6">
                              <label class="col-lg-4 control-label">Employee name</label>
                              <div class="col-md-8">
                                 <select name="emp_id[]" class="form-control select2" multiple>
								 <option value="">Select</option>
								 <?php if(isset($e_list) && count($e_list)>0){ ?>
								 <?php foreach($e_list as $li){ ?>
									<option value="<?php echo $li['a_id']; ?>"><?php echo $li['name']; ?></option>
								 <?php } ?>
								 <?php } ?>
								 </select>
                              </div>
                           </div>
						   <div class="form-group col-md-12">
                              <label class="col-lg-2 control-label">Task Details</label>
                              <div class="col-md-10">
                                 <textarea type="text" class="form-control" name="message" placeholder="Enter Task Details" /></textarea>
                              </div>
                           </div>
                        </div>
						<div class="form-group">
                           <div class="col-lg-6 text-center">
                              <button type="submit" class="btn btn-primary  " name="signup" value="Sign up">Assign</button>
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
               }, prioritization: {
                   validators: {
					notEmpty: {
						message: 'Prioritization is required'
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

