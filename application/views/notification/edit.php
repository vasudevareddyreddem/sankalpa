<div class="content-wrapper">
   <section class="content-header mb-4">
      <h1>
         Edit Notification
      </h1>
      <ol class="breadcrumb">
         <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a></li>
         <li><a href="<?php echo base_url('notification/index'); ?>"><i class="fa fa-list"></i> list</a></li>
         <li class="active">Edit</li>
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
						<legend class="scheduler-border">Edit Notification</legend>
                  <form id="defaultForm" method="post" class="form-horizontal" action="<?php echo base_url('notification/editpost'); ?>" enctype="multipart/form-data">
				  	<?php $csrf = array(
								'name' => $this->security->get_csrf_token_name(),
								'hash' => $this->security->get_csrf_hash()
						); ?>
						<input type="hidden" name="<?=$csrf['name'];?>" value="<?=$csrf['hash'];?>" />
						<input type="hidden" name="n_id" value="<?php echo isset($n_d['n_id'])?$n_d['n_id']:''; ?>">
						 <div class="row">
                           <div class="form-group col-md-6">
                              <label class="col-lg-4 control-label">Title</label>
                              <div class="col-md-8">
                                 <input type="text" class="form-control" name="title" value="<?php echo isset($n_d['title'])?$n_d['title']:''; ?>" placeholder="Enter Title" />
                              </div>
                           </div> 
						   <div class="form-group col-md-6">
                              <label class="col-lg-4 control-label">Message</label>
                              <div class="col-md-8">
                                 <textarea type="text" class="form-control" name="msg" placeholder="Enter Message" ><?php echo isset($n_d['message'])?$n_d['message']:''; ?></textarea>
                              </div>
                           </div>
						  </div>
                     
                        <div class="form-group">
                           <div class="col-lg-6 text-center">
                              <button type="submit" class="btn btn-primary" name="signup" value="Sign up">Update</button>
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
		 //Timepicker
	    $(".timepicker").timepicker({
	      showInputs: false
	    });
	    $('#defaultForm').bootstrapValidator({
			fields: {
	            title: {
				   validators: {
					   notEmpty: {
							message: 'Title is required'
						}
					}
				} ,msg: {
				   validators: {
					   notEmpty: {
							message: 'Message is required'
						}
					}
				}
	        }
	    });
	
	});
</script>

