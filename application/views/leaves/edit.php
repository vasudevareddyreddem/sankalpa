<div class="content-wrapper">
   <section class="content-header mb-4">
      <h1>
         Edit Document
      </h1>
      <ol class="breadcrumb">
         <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a></li>
         <li><a href="<?php echo base_url('document/add'); ?>"><i class="fa fa-add"></i> Add</a></li>
         <li class="active">Document</li>
      </ol>
   </section>
   <section class="content">
      <div class="row">
         <!-- left column -->
         <div class="col-md-12">
            <!-- general form elements -->
            <div class=" ">
               <div style="padding:20px;">
                  <form id="defaultForm" method="post" class="form-horizontal" action="<?php echo base_url('document/editpost'); ?>" enctype="multipart/form-data">
                     	<?php $csrf = array(
								'name' => $this->security->get_csrf_token_name(),
								'hash' => $this->security->get_csrf_hash()
						); ?>
						<input type="hidden" name="<?=$csrf['name'];?>" value="<?=$csrf['hash'];?>" />
						<input type="hidden" name="d_id" value="<?php echo isset($d['d_id'])?$d['d_id']:''; ?>">
					 <div class=" row ">
                        <div class=" col-md-6 ">
                           
						   <div class="form-group ">
                              <label class="col-lg-4 control-label">Title</label>
                              <div class="col-md-8">
                                 <input type="text" class="form-control" name="title" value="<?php echo isset($d['title'])?$d['title']:''; ?>" placeholder="Enter Title" />
                              </div>
                           </div>
						   <div class="form-group ">
                              <label class="col-lg-4 control-label">Description</label>
                              <div class="col-md-8">
                                 <textarea type="text" class="form-control" name="description" placeholder="Enter Description" /><?php echo isset($d['description'])?$d['description']:''; ?></textarea>
                              </div>
                           </div>
                           <div class="form-group ">
                              <label class="col-lg-4 control-label">File</label>
                              <div class="col-md-8">
                                 <input type="file" class="form-control" name="document"/>
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
               title: {
                   validators: {
					notEmpty: {
						message: 'Title is required'
					}
				}
               }, description: {
                   validators: {
					notEmpty: {
						message: 'Description is required'
					}
				}
               }, document: {
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

