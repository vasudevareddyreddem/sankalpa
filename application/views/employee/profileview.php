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
					<tr>
						<td>Father Name</td>
						<td><?php echo isset($u_d['father_name'])?$u_d['father_name']:''; ?></td>
						<td>Mother Name</td>
						<td><?php echo isset($u_d['mother_name'])?$u_d['mother_name']:''; ?></td>
					</tr>
					<tr>
						<td>DOB</td>
						<td><?php echo isset($u_d['dob'])?$u_d['dob']:''; ?></td>
						<td>Gender</td>
						<td><?php echo isset($u_d['gender'])?$u_d['gender']:''; ?></td>
					</tr>
					<tr>
						<td>Aadhar Number</td>
						<td><a download target="_blank" href="<?php echo base_url('assets/document/'.$u_d['aadhar_pic']); ?>"><?php echo isset($u_d['aadhar_num'])?$u_d['aadhar_num']:''; ?></a></td>
						<td>Pan Number</td>
						<td><a download target="_blank" href="<?php echo base_url('assets/document/'.$u_d['pan_pic']); ?>"><?php echo isset($u_d['pan_num'])?$u_d['pan_num']:''; ?></a></td>
					</tr>
					<tr>
						<td>Permanent address </td>
						<td><?php echo isset($u_d['per_add'])?$u_d['per_add']:''; ?></td>
						<td>Temporary address</td>
						<td><?php echo isset($u_d['temp_add'])?$u_d['temp_add']:''; ?></td>
					</tr>
					<tr>
						<td>Profile pic</td>
						<td><a  download target="_blank" href="<?php echo base_url('assets/document/'.$u_d['profile_pic']); ?>"><?php echo isset($u_d['profile_pic'])?$u_d['profile_pic']:''; ?></a></td>
						<td>Upload Aadhar</td>
						<td><a download target="_blank" href="<?php echo base_url('assets/document/'.$u_d['aadhar_pic']); ?>"><?php echo isset($u_d['aadhar_pic'])?$u_d['aadhar_pic']:''; ?></a></td>
					</tr>
					<tr>
						<td>Pan</td>
						<td><a download target="_blank" href="<?php echo base_url('assets/document/'.$u_d['pan_pic']); ?>"><?php echo isset($u_d['pan_pic'])?$u_d['pan_pic']:''; ?></a></td>
						<td>Upload kyc</td>
						<td><a download target="_blank" href="<?php echo base_url('assets/document/'.$u_d['kye']); ?>"><?php echo isset($u_d['kye'])?$u_d['kye']:''; ?></a></td>
					</tr>
					<tr>
						<td>Basic Salary</td>
						<td><?php echo isset($u_d['basicsalary'])?$u_d['basicsalary']:''; ?></td>
						<td>HRA</td>
						<td><?php echo isset($u_d['hra'])?$u_d['hra']:''; ?></td>
					</tr>
					<tr>
						<td>Special Allowance</td>
						<td><?php echo isset($u_d['specialallowance'])?$u_d['specialallowance']:''; ?></td>
						<td>Conveyance</td>
						<td><?php echo isset($u_d['conveyance'])?$u_d['conveyance']:''; ?></td>
					</tr>
					<tr>
						<td>Medical Reimbursement</td>
						<td><?php echo isset($u_d['medicalreimbursement'])?$u_d['medicalreimbursement']:''; ?></td>
						<td>PF Number</td>
						<td><?php echo isset($u_d['pfnumber'])?$u_d['pfnumber']:''; ?></td>
					</tr>
					<tr>
						<td>PF Amount</td>
						<td><?php echo isset($u_d['pfamount'])?$u_d['pfamount']:''; ?></td>
						<td>PT</td>
						<td><?php echo isset($u_d['pt'])?$u_d['pt']:''; ?></td>
					</tr>
					<tr>
						<td>ESI</td>
						<td><?php echo isset($u_d['esi'])?$u_d['esi']:''; ?></td>
						<td>Others</td>
						<td><?php echo isset($u_d['others'])?$u_d['others']:''; ?></td>
					</tr>
					<tr>
						<td>Bank Name</td>
						<td><?php echo isset($u_d['bankname'])?$u_d['bankname']:''; ?></td>
						<td>Bank Account No</td>
						<td><?php echo isset($u_d['bankaccountnumber'])?$u_d['bankaccountnumber']:''; ?></td>
					</tr>
					<tr>
						<td>Advance</td>
						<td><?php echo isset($u_d['advance'])?$u_d['advance']:''; ?></td>
						<td>Salary</td>
						<td><?php echo isset($u_d['salary'])?$u_d['salary']:''; ?></td>
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

