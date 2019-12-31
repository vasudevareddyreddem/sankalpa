 
 <style>
  td{
   background-color: #fff;
}
 </style>
 <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
         Profile
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">My profile</li>
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
				<a href="<?php echo base_url('profile'); ?>" class=" pull-right btn btn-primary btn-sm" style="margin:10px;"> Profile</a>
			  <?php } ?>
              <a href="<?php echo base_url('profile/edit'); ?>" class=" pull-right btn btn-warning btn-sm" style="margin:10px;"> Edit</a>
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive">
				<table id="example1" class="table table-bordered table-striped">
					<tr>
						<th>Name</th>
						<td><?php echo isset($u_d['name'])?$u_d['name']:''; ?></td>
						<th>Department</th>
						<td><?php echo isset($u_d['departname'])?$u_d['departname']:''; ?></td>
					</tr>
					<tr>
						<th>Personal Email</th>
						<td><?php echo isset($u_d['per_mail'])?$u_d['per_mail']:''; ?></td>
						<th>Mobile Number</th>
						<td><?php echo isset($u_d['mobile'])?$u_d['mobile']:''; ?></td>
					</tr>
					<tr>
						<th>Emergency Contact number</th>
						<td><?php echo isset($u_d['emergency_contact_number'])?$u_d['emergency_contact_number']:''; ?></td>
						<th>Blood group</th>
						<td><?php echo isset($u_d['boold_group'])?$u_d['boold_group']:''; ?></td>
					</tr>
					<tr>
						<th>Office Email</th>
						<td><?php echo isset($u_d['off_mail'])?$u_d['off_mail']:''; ?></td>
						<th>Branch</th>
						<td><?php echo isset($u_d['branchname'])?$u_d['branchname']:''; ?></td>
					</tr>
					<tr>
						<th>Code</th>
						<td><?php echo isset($u_d['code'])?$u_d['code']:''; ?></td>
						<th>DOJ</th>
						<td><?php echo isset($u_d['doj'])?$u_d['doj']:''; ?></td>
					</tr>
					
				</table>
              
            </div>
            <!-- /.box-body -->
          </div>
      </div>
      <!-- /.row -->

    </section>
    <!-- /.content -->
  </div>

