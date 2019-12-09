<div class="content-wrapper">
<section class="content-header">
      <h1>
       Generate Payslip
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li class="active"> Generate Payslip</li>
      </ol>
    </section>
   <section class="content">
      <div class="row">
        <!-- left column -->
        <div class="col-md-12">
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title"> Generate Payslip</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
			<div style="padding:20px;">
            <form id="defaultForm" method="post" class="" action="<?php echo base_url('payslip/post'); ?>" enctype="multipart/form-data">
					<?php $csrf = array(
								'name' => $this->security->get_csrf_token_name(),
								'hash' => $this->security->get_csrf_hash()
						); ?>
										<input type="hidden" name="<?=$csrf['name'];?>" value="<?=$csrf['hash'];?>" />

      
						<div class="col-md-6">
							<div class="form-group">
								<label class=" control-label">Year</label>
								<div class="">
									<?php $y=range(date("Y"), 2018); ?>
									<select name="year" id="year" class="form-control">
									<option value="">Select</option>
									<?php foreach($y as $lis){ ?>
									<option value="<?php echo $lis; ?>"><?php echo $lis; ?></option>
									<?php } ?>
									
									</select>
								</div>
							</div>
                        </div>
						<div class="col-md-6">
							<div class="form-group">
								<label class=" control-label">Month</label>
								<div class="">
									<select name="month" id="month" class="form-control">
										<option value="">Select</option>
										<option value="January">January</option>
										<option value="February" >February</option>
										<option value="March">March</option>
										<option value="April">April</option>
										<option value="May">May</option>
										<option value="June">June</option>
										<option value="July">July</option>
										<option value="August">August</option>
										<option value="September">September</option>
										<option value="October">October</option>
										<option value="November">November</option>
										<option value="December">December</option>									
									</select>
								</div>
							</div>
                        </div><div class="col-md-6">
							<div class="form-group">
								<label class=" control-label">Upload File</label>
								<div class="">
									<input type="file" class="form-control" name="ex_file" id="ex_file"  />
								</div>
							</div>
                        </div>
						<div class="col-md-6">
							<div class="form-group">
								<label class=" control-label">&nbsp;</label>
								<div class="">
									<a href="<?php echo base_url('assets/payslipexcel.xlsx'); ?>" download=>Downalod Sample files</a>
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

