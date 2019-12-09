<div class="content-wrapper">
   <section class="content-header mb-4">
      <h1>
         Employee Termination
      </h1>
      <ol class="breadcrumb">
         <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a></li>
         <li><a href="<?php echo base_url('termination/lists'); ?>"><i class="fa fa-list"></i> list</a></li>
         <li class="active">Employee Termination</li>
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
						<legend class="scheduler-border">Employee Termination</legend>
                  <form id="defaultForm" method="post" autocomplete="off" class="form-horizontal" action="<?php echo base_url('termination/addpost'); ?>" enctype="multipart/form-data">
                     	<?php $csrf = array(
								'name' => $this->security->get_csrf_token_name(),
								'hash' => $this->security->get_csrf_hash()
						); ?>
					<input type="hidden" name="<?=$csrf['name'];?>" value="<?=$csrf['hash'];?>" />
					<input type="hidden" name="r_id" value="<?php echo isset($r_details['r_id'])?$r_details['r_id']:''; ?>">

					 <div class=" row ">
                        <div class=" col-md-12" style="<?php if(isset($r_type) && $r_type==1){ echo "display:none;";} ?>">
                           
						   <div class="form-group col-md-6">
                              <label class="col-lg-2 control-label">Employee</label>
                              <div class="col-md-10">
                                 <select class="form-control" name="emp_id">
									<option value="">Select</option>
									<?php if(isset($emp_list) && count($emp_list)>0){ ?>
										<?php foreach($emp_list as $li){ ?>
											<option value="<?php echo $li['a_id']; ?>"><?php echo $li['name']; ?></option>
										<?php } ?>
									<?php } ?>
								 </select>
                              </div>
                           </div>
						   
						   <div class="form-group col-md-6">
								  <label class="col-lg-2 control-label">Document Proof</label>
								  <div class="col-md-10">
									 <input type="file" class="form-control" name="image1"  />
								  </div>
                              </div>
							  <div class="form-group col-md-6">
								  <label class="col-lg-2 control-label">Document Proof</label>
								  <div class="col-md-10">
									 <input type="file" class="form-control" name="image2"  />
								  </div>
                              </div><div class="form-group col-md-6">
								  <label class="col-lg-2 control-label">Document Proof</label>
								  <div class="col-md-10">
									 <input type="file" class="form-control" name="image3"  />
								  </div>
                              </div>
							   <div class="form-group col-md-12">
                              <label class="col-lg-2 control-label">Comment</label>
                              <div class="col-md-10">
                                 <textarea type="text" class="form-control" name="comment" placeholder="Enter Comment" /></textarea>
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
function get_type_of_accept(val){
	if(val=='with notice period'){
		$('#p_notice_period').show();
		$('#p_final_date').hide();
	}else{
		$('#p_notice_period').hide();
		$('#p_final_date').show();
	}
}
$(document).ready(function() {

   	 $('#defaultForm').bootstrapValidator({
   		fields: {
               emp_id: {
                   validators: {
					notEmpty: {
						message: 'Employee id is required'
					}
				}
               },comment: {
                   validators: {
					notEmpty: {
						message: 'comment  is required'
					}
				}
               }, image1: {
                   validators: {
					   notEmpty: {
						message: 'Document is required'
						},
						regexp: {
						regexp: "(.*?)\.(docx|doc|pdf|xlsx|xls)$",
						message: 'Uploaded file is not a valid. Only docx,doc,xlsx,pdf files are allowed'
						}
					}
               }, image2: {
                   validators: {
					regexp: {
					regexp: "(.*?)\.(docx|doc|pdf|xlsx|xls)$",
					message: 'Uploaded file is not a valid. Only docx,doc,xlsx,pdf files are allowed'
					}
				}
               }, image3: {
                   validators: {
					regexp: {
					regexp: "(.*?)\.(docx|doc|pdf|xlsx|xls)$",
					message: 'Uploaded file is not a valid. Only docx,doc,xlsx,pdf files are allowed'
					}
				}
               }
           }
       });
	
   });
</script>

