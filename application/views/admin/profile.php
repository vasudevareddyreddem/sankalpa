 <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        MY PROFILE
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> HOME</a></li>
        <li class="active">MY PROFILE</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <div class="row">
        
        <div class="col-md-12">
		
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title"> &nbsp;</h3>
			  <?php if($u_d['role_id']==2){ ?>
				<a href="<?php echo base_url('profile/view'); ?>" class=" pull-right btn btn-primary btn-sm" style="margin:10px;"> View</a>
			  <?php } ?>
              <a href="<?php echo base_url('profile/edit'); ?>" class=" pull-right btn btn-warning btn-sm" style="margin:10px;"> Edit</a>
              <a href="<?php echo base_url('profile/changepassword'); ?>" class=" pull-right btn btn-warning btn-sm" style="margin:10px;"> Change Password</a>
            </div>
            <div class=" row ">
            <div class=" box-profile col-md-offset-3 col-md-6">
						<?php if($u_d['profile_pic']!=''){ ?>
								<img src="<?php echo base_url('assets/profile_pic/'.$hms_details['profile_pic']); ?>" class="profile-user-img img-responsive img-circle" alt="User Image">
							<?php }else{ ?>
								<img src="<?php echo base_url(); ?>assets/back/img/user.png" class="profile-user-img img-responsive img-circle" alt="User Image">
							<?php } ?>
              <h3 class="profile-username text-center"><?php echo isset($u_d['name'])?$u_d['name']:''; ?></h3>


              <ul class="list-group list-group-unbordered;" style="border solid 2px">
                <li class="list-group-item">
                  <b>Email</b> <a class="pull-right"><?php echo isset($u_d['email'])?$u_d['email']:''; ?></a>
                </li>
                <li class="list-group-item">
                  <b>Moible	</b> <a class="pull-right"><?php echo isset($u_d['mobile'])?$u_d['mobile']:''; ?></a>
                </li>
				 
					<li class="list-group-item">
                  <b>Name	</b> <a class="pull-right">  <?php echo isset($u_d['name'])?$u_d['name']:''; ?></a>
                </li>
				<li class="list-group-item">
                  <b>Email	</b> <a class="pull-right">  <?php echo isset($u_d['email'])?$u_d['email']:''; ?></a>
                </li>	<li class="list-group-item">
                  <b>Mobile	</b> <a class="pull-right">  <?php echo isset($u_d['mobile'])?$u_d['mobile']:''; ?></a>
                </li>			
              </ul>

              
            </div>
            </div>
           
            <!-- /.box-body -->
          </div>
      </div>
      <!-- /.row -->

    </section>
    <!-- /.content -->
  </div>

