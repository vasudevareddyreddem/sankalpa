<div class="content-wrapper">
   <section class="content-header mb-4">
      <h1>
         Edit Question
      </h1>
      <ol class="breadcrumb">
         <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a></li>
         <li class="active">Edit Question</li>
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
						<legend class="scheduler-border">Edit Question</legend>
                  <form id="defaultForm" method="post" autocomplete="off" class="form-horizontal" action="<?php echo base_url('questions/editpost'); ?>" enctype="multipart/form-data">
                     	<?php $csrf = array(
								'name' => $this->security->get_csrf_token_name(),
								'hash' => $this->security->get_csrf_hash()
						); ?>
						<input type="hidden" name="<?=$csrf['name'];?>" value="<?=$csrf['hash'];?>" />
						<input type="hidden" name="q_id" value="<?php echo isset($q_d['q_id'])?$q_d['q_id']:''; ?>" />

					 <div class=" row ">
						<div class="form-group col-md-6">
						  <label class="col-lg-4 control-label">Type</label>
						  <div class="col-md-8">
							 <select name="type" class="form-control">
							 <option value="">Select</option>
							 <option value="OPD" <?php if($q_d['type']=='OPD'){ echo "selected"; } ?>>OPD</option>
							 <option value="IPD" <?php if($q_d['type']=='IPD'){ echo "selected"; } ?>>IPD</option>
							 </select>
						  </div>
					   </div>
					   <div class="form-group col-md-6">
						  <label class="col-lg-4 control-label">Question No</label>
						  <div class="col-md-8">
							<input type="text" class="form-control" name="qno" id="qno" value="<?php echo isset($q_d['qno'])?$q_d['qno']:''; ?>" placeholder="Enter Question No" />
						  </div>
					   </div>
                        <div class=" col-md-12">
                           <div class="form-group col-md-12">
                              <label class="col-lg-2 control-label">Question</label>
                              <div class="col-md-10">
                                 <textarea type="text" class="form-control" name="question" placeholder="Enter Question" /><?php echo isset($q_d['name'])?$q_d['name']:''; ?></textarea>
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
               type: {
                   validators: {
					notEmpty: {
						message: 'Type is required'
					}
				}
               },qno: {
                   validators: {
					notEmpty: {
						message: 'Question is required'
					},
					regexp: {
					regexp:/^[0-9]+$/,
					message: 'Question must be digits only'
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

