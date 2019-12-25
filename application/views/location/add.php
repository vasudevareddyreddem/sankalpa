<div class="content-wrapper">
   <section class="content-header mb-4">
      <h1>
         Add Location
      </h1>
      <ol class="breadcrumb">
         <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a></li>
         <li class="active">Add Location</li>
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
						<legend class="scheduler-border">Add Location</legend>
                  <form id="defaultForm" method="post" autocomplete="off" class="form-horizontal" action="<?php echo base_url('location/addpost'); ?>" enctype="multipart/form-data">
                     	<?php $csrf = array(
								'name' => $this->security->get_csrf_token_name(),
								'hash' => $this->security->get_csrf_hash()
						); ?>
										<input type="hidden" name="<?=$csrf['name'];?>" value="<?=$csrf['hash'];?>" />

					 <div class=" row ">
						
					   <div class="form-group col-md-6">
						  <label class="col-lg-4 control-label">Location Name</label>
						  <div class="col-md-8">
							<input type="text" class="form-control" name="l_name" id="l_name" placeholder="Enter Location Name" />
						  </div>
					   </div>
                       <div class="clearfix">&nbsp;</div>
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

