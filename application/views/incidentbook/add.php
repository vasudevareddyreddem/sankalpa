<div class="content-wrapper">
   <section class="content-header mb-4">
      <h1>
         Incident book
      </h1>
      <ol class="breadcrumb">
         <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a></li>
         <li><a href="<?php echo base_url('incidentbook'); ?>"><i class="fa fa-list"></i> list</a></li>
         <li class="active">Incident book</li>
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
						<legend class="scheduler-border">Incident book</legend>
                  <form id="defaultForm" method="post" autocomplete="off" class="form-horizontal" action="<?php echo base_url('incidentbook/addpost'); ?>" enctype="multipart/form-data">
                     	<?php $csrf = array(
								'name' => $this->security->get_csrf_token_name(),
								'hash' => $this->security->get_csrf_hash()
						); ?>
										<input type="hidden" name="<?=$csrf['name'];?>" value="<?=$csrf['hash'];?>" />

					 <div class=" row ">
                        <div class=" col-md-12">
                           <div class="form-group col-md-6">
                              <label class="col-lg-4 control-label">Name</label>
                              <div class="col-md-8">
                                 <input type="text" class="form-control" id="name" name="name" placeholder="Enter Name" value="" />
                              </div>
                           </div>
						   <div class="form-group col-md-6">
                              <label class="col-lg-4 control-label">Date  & Time</label>
                              <div class="col-md-8">
                                 <input type="text" class="form-control" id="d_time" name="d_time" placeholder="Enter Name" value="<?php echo date('Y-m-d h:i:s'); ?>" />
                              </div>
                           </div>
						   <div class="form-group col-md-6">
                              <label class="col-lg-4 control-label">Incident</label>
                              <div class="col-md-8">
                                 <input type="text" class="form-control" id="incident" name="incident" placeholder="Enter Incident" value="" />
                              </div>
                           </div>
						   <div class="form-group col-md-6">
                              <label class="col-lg-4 control-label">Staff / Nurse</label>
                              <div class="col-md-8">
                                 <input type="text" class="form-control" id="staff_nurse" name="staff_nurse" placeholder="Enter Staff / Nurse" value="" />
                              </div>
                           </div>
						   <div class="form-group col-md-6">
                              <label class="col-lg-4 control-label">Image</label>
                              <div class="col-md-8">
                                 <input type="file" class="form-control" id="image" name="image" >
                              </div>
                           </div>						 
                        </div>
						<div class="form-group">
                           <div class="col-lg-6 text-center">
                              <button type="submit" class="btn btn-primary  " name="signup" value="Sign up">Add</button>
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
               name: {
                   validators: {
					notEmpty: {
						message: 'Name is required'
					}
				}
               }, incident: {
                   validators: {
					notEmpty: {
						message: 'Incident is required'
					}
				}
               },  staff_nurse: {
                   validators: {
					notEmpty: {
						message: 'Staff / Nurse is required'
					}
				}
               },image: {
                    validators: {
					regexp: {
					regexp: "(.*?)\.(png|Png|jpeg|Jpeg|gif|Gif|jpg|Jpg|pdf)$",
					message: 'Uploaded file is not a valid. Only png,jpeg,Gif,pdf files are allowed'
					}
				}
               }
           }
       });
		
   
   });
</script>

