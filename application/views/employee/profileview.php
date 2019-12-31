 <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <?php echo isset($u_d['name'])?$u_d['name']:''; ?> Profile
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active"><?php echo isset($u_d['name'])?$u_d['name']:''; ?> profile</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <div class="row">
        
        <div class="col-md-12">
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title"> &nbsp;</h3>
			 
              <a href="<?php echo base_url('employee'); ?>" class=" pull-right btn btn-warning btn-sm" style="margin:10px;"> Back</a>
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive">
				<table id="example1" class="table table-bordered table-striped">
					<tr>
						<td>Name</td>
						<td><?php echo isset($u_d['name'])?$u_d['name']:''; ?></td>
						<td>Department</td>
						<td><?php echo isset($u_d['departname'])?$u_d['departname']:''; ?></td>
					</tr>
					<tr>
						<td>Personal Email</td>
						<td><?php echo isset($u_d['per_mail'])?$u_d['per_mail']:''; ?></td>
						<td>Mobile Number</td>
						<td><?php echo isset($u_d['mobile'])?$u_d['mobile']:''; ?></td>
					</tr>
					<tr>
						<td>Office Email</td>
						<td><?php echo isset($u_d['off_mail'])?$u_d['off_mail']:''; ?></td>
						<td>Branch</td>
						<td><?php echo isset($u_d['branchname'])?$u_d['branchname']:''; ?></td>
					</tr>
					<tr>
						<td>Code</td>
						<td><?php echo isset($u_d['code'])?$u_d['code']:''; ?></td>
						<td>DOJ</td>
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

