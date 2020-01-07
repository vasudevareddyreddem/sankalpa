<div class="content-wrapper">
   <section class="content-header mb-4">
      <h1>
         Edit Source
      </h1>
      <ol class="breadcrumb">
         <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a></li>
         <li class="active">Edit Source</li>
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
						<legend class="scheduler-border">Edit Source</legend>
                  <form id="defaultForm" method="post" autocomplete="off" class="form-horizontal" action="<?php echo base_url('source/editpost'); ?>" enctype="multipart/form-data">
                     	<?php $csrf = array(
								'name' => $this->security->get_csrf_token_name(),
								'hash' => $this->security->get_csrf_hash()
						); ?>
						<input type="hidden" name="<?=$csrf['name'];?>" value="<?=$csrf['hash'];?>" />
						<input type="hidden" name="l_id" value="<?php echo isset($q_d['s_id'])?$q_d['s_id']:''; ?>" />

					<div class="form-group col-md-6">
						  <label class="col-lg-4 control-label">Source Name</label>
						  <div class="col-md-8">
							<input type="text" class="form-control" name="l_name" id="l_name" value="<?php echo isset($q_d['s_name'])?$q_d['s_name']:''; ?>" placeholder="Enter Source Name" />
						  </div>
					   </div>
					    <div class="clearfix">&nbsp;</div>
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
               l_name: {
                   validators: {
					notEmpty: {
						message: 'Location Name is required'
					}
				}
               },question: {
                   validators: {
					notEmpty: {
						message: 'From date is required'
					}
				}
               }
           }
       });
	
   
   });
</script>

