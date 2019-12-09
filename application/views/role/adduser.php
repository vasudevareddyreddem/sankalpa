<div class="content-wrapper">
   <section class="content-header mb-4">
      <h1>
         Add Users
      </h1>
      <ol class="breadcrumb">
         <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a></li>
         <li><a href="<?php echo base_url('user/lists'); ?>"><i class="fa fa-list"></i> list</a></li>
         <li class="active">Users</li>
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
						<legend class="scheduler-border">Add Users</legend>
                  <form id="defaultForm" method="post" class="form-horizontal" action="<?php echo base_url('user/addpost'); ?>">
                     	<?php $csrf = array(
								'name' => $this->security->get_csrf_token_name(),
								'hash' => $this->security->get_csrf_hash()
						); ?>
										<input type="hidden" name="<?=$csrf['name'];?>" value="<?=$csrf['hash'];?>" />

					 <div class=" row ">
                        <div class=" col-md-6 ">
                           <div class="form-group ">
                              <label class="col-lg-4 control-label">Role</label>
                              <div class="col-md-8">
                                 <select name="role_id" class="form-control" onchange="get_depart(this.value);">
								 <option value="">Select</option>
								 <?php foreach($role_list as $li){ ?>
									<option value="<?php echo $li['r_id']; ?>"><?php echo $li['name']; ?></option>
								 <?php } ?>
								 </select>
                              </div>
                           </div>
						   <span id="dep_ids" style="display:none;">
							   <div class="form-group ">
								  <label class="col-lg-4 control-label">Departments</label>
								  <div class="col-md-8">
									 <select name="departments[]" class="form-control select2" multiple="multiple" data-placeholder="Select a State" style="width: 100%;">
									 <option value="">Select</option>
									 <?php if(isset($d_list) && count($d_list)>0){ ?>
										 <?php foreach($d_list as $li){ ?>
											<option value="<?php echo $li['d_id']; ?>"><?php echo $li['name']; ?></option>
										 <?php } ?>
									 <?php } ?>
									 </select>
								  </div>
							   </div>
						   </span>
						   <div class="form-group ">
                              <label class="col-lg-4 control-label">Name</label>
                              <div class="col-md-8">
                                 <input type="text" class="form-control" name="name" placeholder="Enter Name" />
                              </div>
                           </div>
						   <div class="form-group ">
                              <label class="col-lg-4 control-label">Email</label>
                              <div class="col-md-8">
                                 <input type="text" class="form-control" name="email" placeholder="Enter Email" />
                              </div>
                           </div>
                           <div class="form-group ">
                              <label class="col-lg-4 control-label">Phone Number</label>
                              <div class="col-md-8">
                                 <input type="text" class="form-control" name="mobile" placeholder="Enter Phone Number" />
                              </div>
                           </div>
						   
						   <div class="form-group ">
                              <label class="col-lg-4 control-label">Password</label>
                              <div class="col-md-8">
                                 <input type="password" class="form-control" name="pwd" placeholder="Enter Password" />
                              </div>
                           </div>
						   <div class="form-group ">
                              <label class="col-lg-4 control-label">Confirm Password</label>
                              <div class="col-md-8">
                                 <input type="password" class="form-control" name="confirmpwd" placeholder="Enter confirm Password" />
                              </div>
                           </div> 
						   
                        </div>
						<?php if(isset($r_list) && count($r_list)>0){ ?>
                        <div class="col-md-6" >
                        <div class="form-group" >
                        <div class="col-md-8" style="background-color:#fff;height:50%;-webkit-box-shadow: 0px -2px 15px 0px rgba(0,0,0,0.75);
                           -moz-box-shadow: 0px -2px 15px 0px rgba(0,0,0,0.75);
                           box-shadow: 0px -2px 15px 0px rgba(0,0,0,0.75);">
                        <table class="table">
                        <thead>
                        <tr>
                        <th>&nbsp;</th>
                        <th>Roll Name</th>
                        </tr>
                        </thead>
                        <tbody>
						<?php foreach($r_list as $li){ ?>
                        <tr>
							<td class="form-group">
								<label class=" col-md-4">
								<input type="checkbox" style="width:50px;"  name="role_name[]" value="<?php echo isset($li['r_n_id'])?$li['r_n_id']:''; ?>" required>
								</label>
							</td>
							<td><?php echo isset($li['role_name'])?$li['role_name']:''; ?></td>
                        </tr>
						<?php } ?>
                        
                        </tbody>
                        </table>
                        </div>
                        <div class="col-md-4">&nbsp;</div>
                        </div>
                        </div>
						<?php } ?>
						
                        <div class="clearfix">&nbsp;</div>
                        <div class="form-group">
                           <div class="col-lg-6 text-center">
                              <button type="submit" class="btn btn-primary  " name="signup" value="Sign up">Add User</button>
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
function get_depart(val){
	if(val==4){
		$('#dep_ids').show();
	}else{
		$('#dep_ids').hide();
	}
	
}
   $(document).ready(function() {
   	 $('#defaultForm').bootstrapValidator({
   		fields: {
               role_id: {
                   validators: {
					notEmpty: {
						message: 'Role is required'
					}
				}
               }, name: {
                   validators: {
					notEmpty: {
						message: 'Name is required'
					}
				}
               },
			   email: {
                   validators: {
					notEmpty: {
						message: 'Email is required'
					},
					regexp: {
					regexp: /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/,
					message: 'Please enter a valid email address. For example johndoe@domain.com.'
					}
				}
               },
               mobile: {
                    validators: {
					 notEmpty: {
						message: 'Mobile Number is required'
					},
                    regexp: {
					regexp:  /^[0-9]{10,14}$/,
					message:'Mobile Number must be 10 to 14 digits'
					}
                }
               },
			   'role_name[]': {
                    validators: {
						 notEmpty: {
							message: 'Roll name is required'
						}
					}
               },'departments[]': {
                    validators: {
						 notEmpty: {
							message: 'Department is required'
						}
					}
               },
               pwd: {
                validators: {
					notEmpty: {
						message: 'Password is required'
					},
					stringLength: {
                        min: 6,
                        message: 'Password  must be at least 6 characters. '
                    },
					regexp: {
					regexp:/^[ A-Za-z0-9_@.,/!;:}{@#&`~'"\\|=^?$%*)(_+-]*$/,
					message: 'Password wont allow <>[]'
					}
				}
            },
           confirmpwd: {
					 validators: {
						 notEmpty: {
						message: 'Confirm Password is required'
					},
					identical: {
						field: 'pwd',
						message: 'Password and Confirm Password do not match'
					}
					}
				}
           }
       });
   
   });
</script>

