<div class="content-wrapper">
	<section class="content-header mb-4">
		<h1>
     Roles
      </h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a>
			</li>
			<li class="active">Role</li>
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
						<legend class="scheduler-border">Add Roles</legend>
						<form id="defaultForm" method="post" class="form-horizontal" action="<?php echo base_url('user/addrolespost'); ?>">
								<?php $csrf = array(
								'name' => $this->security->get_csrf_token_name(),
								'hash' => $this->security->get_csrf_hash()
						); ?>
										<input type="hidden" name="<?=$csrf['name'];?>" value="<?=$csrf['hash'];?>" />

						<div class=" row ">
							<div class=" col-md-6 ">
								
							   <div class="form-group">
									<label class="col-lg-4 control-label">Role name</label>
									<div class="col-lg-8">
										<input type="text" class="form-control" name="role_name" value="" placeholder="Enter Role name" />
									</div>
							   </div>
							 
							
						</div>
						 
				
								
							
						<div class="clearfix">&nbsp;</div>
							
							<div class="form-group">
								<div class="col-lg-6 text-center">
							
									<button type="submit" class="btn btn-primary  " name="signup" value="Sign up">Add Role</button>
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

</div>

<script type="text/javascript">
function get_options(id){
	jQuery.ajax({
					url: "<?php echo base_url('user/get_module_options');?>",
					data: {
						m_id: id,
					},
					dataType: 'json',
					type: 'POST',
					success: function (data) {
							$('#role_option').empty();
						    $('#role_option').append('<option value="" disabled>select</option>');
						if(data.msg==1){
							$.each(data.list, function(i, product) {
							$('#role_option').append('<option value="'+product.m_m_id+'">'+product.m_menu_name+'</option>').trigger("chosen:updated");
							});
						}
					}
			});
}
	$(document).ready(function() {
		$('#defaultForm').bootstrapValidator({
				fields: {
					m_name: {
						validators: {
							notEmpty: {
								message: 'Module name is required'
							}
						}
					},
					'role_option[]': {
						validators: {
							notEmpty: {
								message: 'Menu Option is required'
							}
						}
					},
					role_name: {
						validators: {
							notEmpty: {
								message: 'Role Name is required'
							}
						}
					},
	            captcha: {
	                validators: {
	                    callback: {
	                        message: 'Wrong answer',
	                        callback: function(value, validator) {
	                            var items = $('#captchaOperation').html().split(' '), sum = parseInt(items[0]) + parseInt(items[2]);
	                            return value == sum;
	                        }
	                    }
	                }
	            }
	        }
	    });
	});
</script>
