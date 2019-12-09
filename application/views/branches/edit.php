<div class="content-wrapper">
	<section class="content-header mb-4">
		<h1>
     Branch Edit
      </h1>
		<ol class="breadcrumb">
			<li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a></li>
			<li><a href="<?php echo base_url('branches'); ?>"><i class="fa fa-dashboard"></i> List</a></li>
			<li class="active">Branch edit</li>
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
						<legend class="scheduler-border">Edit Branch</legend>
						<form id="defaultForm" method="post" class="form-horizontal" action="<?php echo base_url('branches/editpost'); ?>" autocomplete="off">
							<?php $csrf = array(
								'name' => $this->security->get_csrf_token_name(),
								'hash' => $this->security->get_csrf_hash()
						); ?>
										<input type="hidden" name="<?=$csrf['name'];?>" value="<?=$csrf['hash'];?>" />

						<input  type="hidden" name="b_id"  value="<?php echo isset($d['b_id'])?$d['b_id']:'';?>">
							<div class=" row ">
							<div class=" col-md-6 ">
								 <div class="form-group ">
									<label class="col-lg-4 control-label">Department  Code</label>
									<div class="col-md-8">
										<input type="text" class="form-control" name="b_code" value="<?php echo isset($d['code'])?$d['code']:'';?>" placeholder="Enter Branch Code" />
									</div>
								</div> 
							</div>
							<div class=" col-md-6 ">
								 <div class="form-group ">
									<label class="col-lg-4 control-label">Department  name</label>
									<div class="col-md-8">
										<input type="text" class="form-control" name="b_name" value="<?php echo isset($d['name'])?$d['name']:'';?>" placeholder="Enter Branch name" />
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
	            b_name: {
	                validators: {
	                    notEmpty: {
	                        message: 'Branch name is required'
	                    }
	                }
	            }
	        }
	    });
	});
</script>