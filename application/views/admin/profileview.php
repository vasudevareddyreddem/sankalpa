 
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
            <div class="box-body">
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
					<tr>
						<th>Type of employee</th>
						<td><?php echo isset($u_d['type_of_emp'])?$u_d['type_of_emp']:''; ?></td>
						<th>Months</th>
						<td><?php echo isset($u_d['months'])?$u_d['months']:''; ?></td>
					</tr>
					<tr>
						<th>Notice period</th>
						<td><?php echo isset($u_d['notice_period'])?$u_d['notice_period']:''; ?></td>
						<th>Months</th>
						<td><?php echo isset($u_d['n_p_months'])?$u_d['n_p_months']:''; ?></td>
					</tr>
					<tr>
						<th>Father Name</th>
						<td><?php echo isset($u_d['father_name'])?$u_d['father_name']:''; ?></td>
						<th>Mother Name</th>
						<td><?php echo isset($u_d['mother_name'])?$u_d['mother_name']:''; ?></td>
					</tr>
						<tr>
						<th>Marital status</th>
						<td><?php echo isset($u_d['marital_status'])?$u_d['marital_status']:''; ?></td>
						<?php if($u_d['marital_status']=='Yes'){ ?>
						<th>Marriage Date</th>
						<td><?php echo isset($u_d['marriage_date'])?$u_d['marriage_date']:''; ?></td>
						
						</tr>
						<?php } else{ ?>
						</tr>
						<?php } ?>
						<?php if($u_d['marital_status']=='Yes'){ ?>
					<tr>
						<th>Spouse</th>
						<td><?php echo isset($u_d['spouse'])?$u_d['spouse']:''; ?></td>
						<th>Spouse Date Of Birth</th>
						<td><?php echo isset($u_d['spouse_dob'])?$u_d['spouse_dob']:''; ?></td>
					</tr>
					<tr>
						<th>Children</th>
						<td><?php echo isset($u_d['children_one'])?$u_d['children_one']:''; ?></td>
					
						<th>Children Date Of Birth</th>
						<td><?php echo isset($u_d['children_one_dob'])?$u_d['children_one_dob']:''; ?></td>
					</tr>
					<tr>
						<th>Children</th>
						<td><?php echo isset($u_d['children_two'])?$u_d['children_two']:''; ?></td>
					
						<th>Children Date Of Birth</th>
						<td><?php echo isset($u_d['children_two_dob'])?$u_d['children_two_dob']:''; ?></td>
						
					</tr>
					<tr>
					<th>Children</th>
						<td><?php echo isset($u_d['children_three'])?$u_d['children_three']:''; ?></td>
						<th>Children Date Of Birth</th>
						<td><?php echo isset($u_d['children_three_dob'])?$u_d['children_three_dob']:''; ?></td>
					</tr>
					<?php } ?>
					<tr>
						<th>DOB</th>
						<td><?php echo isset($u_d['dob'])?$u_d['dob']:''; ?></td>
						<th>Gender</th>
						<td><?php echo isset($u_d['gender'])?$u_d['gender']:''; ?></td>
					</tr>
					<tr>
						<th>Aadhar Number</th>
						<td><a download target="_blank" href="<?php echo base_url('assets/document/'.$u_d['aadhar_pic']); ?>"><?php echo isset($u_d['aadhar_num'])?$u_d['aadhar_num']:''; ?></a></td>
						<th>Pan Number</th>
						<td><a download target="_blank" href="<?php echo base_url('assets/document/'.$u_d['pan_pic']); ?>"><?php echo isset($u_d['pan_num'])?$u_d['pan_num']:''; ?></a></td>
					</tr>
					<tr>
						<th>Permanent address </th>
						<td><?php echo isset($u_d['per_add'])?$u_d['per_add']:''; ?></td>
						<th>Current address</th>
						<td><?php echo isset($u_d['temp_add'])?$u_d['temp_add']:''; ?></td>
					</tr>
					<tr>
						<th>Profile pic</th>
						<td><a  download target="_blank" href="<?php echo base_url('assets/document/'.$u_d['profile_pic']); ?>"><?php echo isset($u_d['profile_pic'])?$u_d['profile_pic']:''; ?></a></td>
						<th>Aadhar proof</th>
						<td><a download target="_blank" href="<?php echo base_url('assets/document/'.$u_d['aadhar_pic']); ?>"><?php echo isset($u_d['aadhar_pic'])?$u_d['aadhar_pic']:''; ?></a></td>
					</tr>
					<tr>
						<th>Pan</th>
						<td><a download target="_blank" href="<?php echo base_url('assets/document/'.$u_d['pan_pic']); ?>"><?php echo isset($u_d['pan_pic'])?$u_d['pan_pic']:''; ?></a></td>
						<th>kyc aadhar proof</th>
						<td><a download target="_blank" href="<?php echo base_url('assets/document/'.$u_d['kye']); ?>"><?php echo isset($u_d['kye'])?$u_d['kye']:''; ?></a></td>
					</tr>
					<tr>
						<th>Basic Salary</th>
						<td><?php echo isset($u_d['basicsalary'])?$u_d['basicsalary']:''; ?></td>
						<th>HRA</th>
						<td><?php echo isset($u_d['hra'])?$u_d['hra']:''; ?></td>
					</tr>
					<tr>
						<th>Special Allowance</th>
						<td><?php echo isset($u_d['specialallowance'])?$u_d['specialallowance']:''; ?></td>
						<th>Conveyance</th>
						<td><?php echo isset($u_d['conveyance'])?$u_d['conveyance']:''; ?></td>
					</tr>
					<tr>
						<th>Medical Reimbursement</th>
						<td><?php echo isset($u_d['medicalreimbursement'])?$u_d['medicalreimbursement']:''; ?></td>
						<th>PF Number</th>
						<td><?php echo isset($u_d['pfnumber'])?$u_d['pfnumber']:''; ?></td>
					</tr>
					<tr>
						<th>PF - Employee Contribution</th>
						<td><?php echo isset($u_d['employee_pfamount'])?$u_d['employee_pfamount']:''; ?></td>
						<th>PF - Employer Contribution</th>
						<td><?php echo isset($u_d['employer_pfamount'])?$u_d['employer_pfamount']:''; ?></td>
					</tr>
					<tr>
						<th>Professional Tax</th>
						<td><?php echo isset($u_d['pt'])?$u_d['pt']:''; ?></td>
						<th>ESI Number</th>
						<td><?php echo isset($u_d['employee_esi'])?$u_d['employee_esi']:''; ?></td>
					</tr>
					<tr>
						<th>ESI - Employee Contribution</th>
						<td><?php echo isset($u_d['employee_contribution_esi'])?$u_d['employee_contribution_esi']:''; ?></td>
						<th>ESI - Employer Contributionr</th>
						<td><?php echo isset($u_d['employer_contribution_esi'])?$u_d['employer_contribution_esi']:''; ?></td>
					</tr>
					
					<tr>
						<th>Bank Name</th>
						<td><?php echo isset($u_d['bankname'])?$u_d['bankname']:''; ?></td>
						
						<th>Bank Account No</th>
						<td><?php echo isset($u_d['bankaccountnumber'])?$u_d['bankaccountnumber']:''; ?></td>
					</tr>
					<tr>
						<th>IFSC</th>
						<td><?php echo isset($u_d['ifsc'])?$u_d['ifsc']:''; ?></td>
						
						<th>Designation</th>
						<td><?php echo isset($u_d['designation'])?$u_d['designation']:''; ?></td>
					</tr>
					<tr>
						<th>Others</th>
						<td><?php echo isset($u_d['others'])?$u_d['others']:''; ?></td>
						<th>Employee Buyout (If Any)</th>
						<td><?php echo isset($u_d['employee_buyout'])?$u_d['employee_buyout']:''; ?></td>
					</tr>
					<tr>
						<th> Relocation Allowance (If Any)</th>
						<td><?php echo isset($u_d['relocation_allowance'])?$u_d['relocation_allowance']:''; ?></td>
						<th>Advance (If Any)</th>
						<td><?php echo isset($u_d['advance'])?$u_d['advance']:''; ?></td>
					</tr>
					<tr>
						<th>Net Salary</th>
						<td><?php echo isset($u_d['netsalary'])?$u_d['netsalary']:''; ?></td>
						<th>Gross Salary</th>
						<td><?php echo isset($u_d['gross_salary'])?$u_d['gross_salary']:''; ?></td>
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

