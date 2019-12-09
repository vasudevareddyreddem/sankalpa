<div class="content-wrapper">
<section class="content-header">
      <h1>
       Upload attendance
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li class="active">Upload attendance</li>
      </ol>
    </section>
   <section class="content">
      <div class="row">
        <!-- left column -->
        <div class="col-md-12">
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Upload attendance</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
			<div style="padding:20px;">
            <form id="defaultForm" method="post" class="" action="<?php echo base_url('attendance/post'); ?>" enctype="multipart/form-data">
					<?php $csrf = array(
								'name' => $this->security->get_csrf_token_name(),
								'hash' => $this->security->get_csrf_hash()
						); ?>
										<input type="hidden" name="<?=$csrf['name'];?>" value="<?=$csrf['hash'];?>" />

      
						<div class="col-md-6">
							<div class="form-group">
								<label class=" control-label">Upload</label>
								<div class="">
									<input type="file" class="form-control" name="ex_file" id="ex_file"  />
								</div>
							</div>
                        </div>
						<div class="col-md-6">
							<div class="form-group">
								<label class=" control-label">&nbsp;</label>
								<div class="">
									<a href="<?php echo base_url('assets/timesheet.xlsx'); ?>" download=>Downalod Sample files</a>
								</div>
							</div>
                        </div>
						
						<div class="clearfix">&nbsp;</div>
						  <div class="form-group">
                            <div class="col-lg-12">
                                <button type="submit" class="btn btn-primary" name="signup" value="Sign up">Submit</button>
                                
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
            ex_file: {
                validators: {
					notEmpty: {
						message: 'Name is required'
					},
					regexp: {
					regexp: "(.*?)\.(xls|xlsx)$",
					message: 'Uploaded file is not a valid. Only xls,xlsx files are allowed'
					}
				}
            }
        }
    });
});
</script>

