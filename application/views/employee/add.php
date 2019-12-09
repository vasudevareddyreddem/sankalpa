<head>
<link href="<?php echo base_url(); ?>assets/vendor/css/gsdk-bootstrap-wizard.css" rel="stylesheet">
</head>
<style>
.nav-pills > li  {
    margin-left: 0;
    padding: 7px;
	text-align:center
}
.col-md-6 {
    -webkit-box-flex: 0;
    -webkit-flex: 0 0 50%;
    -ms-flex: 0 0 50%;
    flex: 0 0 50%;
    max-width: 46%;
    margin: 10px;
}
select{
	display:block !important;
}
.stepwizard-step p {
    margin-top: 0px;
    color:#666;
}
.stepwizard-row {
    display: table-row;
}
.stepwizard {
    display: table;
    width: 100%;
    position: relative;
}
.stepwizard-step button[disabled] {
    /*opacity: 1 !important;
    filter: alpha(opacity=100) !important;*/
}
.stepwizard .btn.disabled, .stepwizard .btn[disabled], .stepwizard fieldset[disabled] .btn {
    opacity:1 !important;
    color:#bbb;
}
.stepwizard-row:before {
    top: 14px;
    bottom: 0;
    position: absolute;
    content:" ";
    width: 100%;
    height: 1px;
   
    z-index: 0;
}
.stepwizard-step {
    display: table-cell;
    text-align: center;
    position: relative;
}
.btn-circle {
   
    text-align: center;
    padding: 6px 0;
    font-size: 12px;
    line-height: 1.428571429;
  
}
.btn-success{
	background:#05AE0E;
	color:#fff;
}

</style>
<div class="content-wrapper">
   <section class="content-header mb-4">
      <h1>
         Add Employee
      </h1>
      <ol class="breadcrumb">
         <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a></li>
         <li><a href="<?php echo base_url('employee'); ?>"><i class="fa fa-list"></i> list</a></li>
         <li class="active">Employee</li>
      </ol>
   </section>
   <section class="content">
      <div class="container">
      <div class="col-md-11 bg-white">
    <div class="stepwizard" style="margin:10px 0px">
        <div class="stepwizard-row setup-panel">
            <div class=" "> 
                <a href="#step-1" type="button" class="btn btn-success  stepwizard-step col-xs-4">Employee Details</a>
                
            </div>
            <div class=" "> 
                <a href="#step-2" type="button" class="btn btn-default stepwizard-step col-xs-4" disabled="disabled">Personal Details</a>
                
            </div>
           
            <div class=""> 
                <a href="#step-3" type="button" class="btn btn-default stepwizard-step col-xs-4" disabled="disabled">Salary Details</a>
              
            </div>
        </div>
    </div>
    
    <form role="form" action="<?php echo base_url('employee/addpost'); ?>" method="POST" enctype="multipart/form-data">
        <div class="panel panel-primary setup-content" id="step-1">
            <div class="panel-heading">
                 <h3 class="panel-title">Employee Details</h3>
            </div>
            <div class="panel-body">
                 <div class="form-group col-md-6">
                    <label class="control-label">Name </label>
                    <input maxlength="100" type="text" name="name" required="required" class="form-control" placeholder="Enter Name" />
                </div>
                 <div class="form-group col-md-6">
                    <label class="control-label">Department </label>
                    <select name="dep_id" class="form-control" required="required">
					<option value="">Select</option>
					<?php if(isset($dep_list) && count($dep_list)>0){ ?>
					<?php foreach($dep_list as $li){ ?>
						<option value="<?php echo $li['d_id']; ?>"><?php echo $li['name']; ?></option>
					<?Php } ?>
					<?Php } ?>
					</select>
                </div>
				<div class="form-group col-md-6">
                    <label class="control-label">Designation * </label>
                    <input maxlength="100" type="text" name="designation"  required="required" class="form-control" placeholder="Enter Designation" />
                </div>
				<div class="form-group col-md-6">
                    <label class="control-label">Personal Email * </label>
                    <input maxlength="100" type="text" name="per_mail"  required="required" class="form-control" placeholder="Enter Personal Email" />
                </div>
				<div class="form-group col-md-6">
                    <label class="control-label">Mobile Number * </label>
                    <input maxlength="100" type="text" name="mobile" required="required" class="form-control" placeholder="Enter Mobile Number" />
                </div>
				<div class="form-group col-md-6">
                    <label class="control-label">Emergency Contact number</label>
                    <input maxlength="100" name="emergency_contact_number" id="emergency_contact_number" type="text" required="required" class="form-control" placeholder="Enter Emergency Contact number" />
                </div>
				<div class="form-group col-md-6">
                    <label class="control-label">Office Email * </label>
                    <input maxlength="100" type="text" name="off_mail" required="required" class="form-control" placeholder="Enter Office Email" />
                </div>
				<div class="form-group col-md-6">
                    <label class="control-label">Branch  </label>
					<select name="branch_id" class="form-control" required="required" onchange ="get_employeid(this.value);" required>
					<option value="">Select</option>
					<?php if(isset($branch_list) && count($branch_list)>0){ ?>
					<?php foreach($branch_list as $li){ ?>
						<option value="<?php echo $li['b_id']; ?>"><?php echo $li['name']; ?></option>
					<?Php } ?>
					<?Php } ?>
					</select>
                </div>
				<div class="form-group col-md-6">
                    <label class="control-label">Code *  </label>
                    <input maxlength="100" name="code" id="code" type="text" required="required" class="form-control" placeholder="Enter Last Name" />
                </div>				
				<div class="form-group col-md-6">
                    <label class="control-label">DOJ   </label>
                    <input maxlength="100" name="doj" id="doj" type="text" required="required" class="form-control datepicker" placeholder="Enter DOJ" />
                </div>
				<div class="form-group col-md-6">
                    <label class="control-label">Type of employee *</label>
					<select class="form-control" required id="type_of_emp" name="type_of_emp" onchange="get_type_of_emp(this.value);">
						<option value="">Select</option>
						<option value="confirmed">confirmed</option>
						<option value="probation">probation</option>
					</select>					
                </div>
				<span id="p_emp_months" style="display:none;">
				<div class="form-group col-md-6">
                    <label class="control-label">Months</label>
					<select class="form-control" required id="months" name="months" >
						<option value="">Select</option>
						<option value="1 Month">1 Month</option>
						<option value="2 Months">2 Months</option>
						<option value="3 Months">3 Months</option>
						<option value="4 Months">4 Months</option>
						<option value="5 Months">5 Months</option>
						<option value="6 Months">6 Months</option>
					</select>					
                </div>
				</span>
				<div class="form-group col-md-6">
                    <label class="control-label">Notice period *</label>
					<select class="form-control" required id="notice_period" name="notice_period" onchange="get_notice_period(this.value);">
						<option value="">Select</option>
						<option value="Yes">Yes</option>
						<option value="No">No</option>
					</select>					
                </div>
				<span id="p_notice_period" style="display:none;">
				<div class="form-group col-md-6">
                    <label class="control-label">Months</label>
					<select class="form-control" required id="n_p_months" name="n_p_months" >
						<option value="">Select</option>
						<option value="1 Month">1 Month</option>
						<option value="2 Months">2 Months</option>
						<option value="3 Months">3 Months</option>
						<option value="4 Months">4 Months</option>
						<option value="5 Months">5 Months</option>
						<option value="6 Months">6 Months</option>
					</select>					
                </div>
				</span>
				
				<div class="clearfix">&nbsp;</div>
                <button class="btn btn-primary nextBtn pull-right text-white" type="button">Next</button>
            </div>
        </div>
        
        <div class="panel panel-primary setup-content" id="step-2">
            <div class="panel-heading">
                 <h3 class="panel-title">Personal Details</h3>
            </div>
            <div class="panel-body">
                <div class="form-group col-md-6">
                    <label class="control-label">Father Name *</label>
                    <input maxlength="200" type="text" name="father_name" required="required" class="form-control" placeholder="Enter Father Name" />
                </div>
                <div class="form-group col-md-6">
                    <label class="control-label">Mother Name *</label>
                    <input maxlength="200" type="text" name="mother_name" required="required" class="form-control" placeholder="Enter Mother Address" />
                </div>
				<div class="form-group col-md-6">
                    <label class="control-label">DOB *</label>
                    <input maxlength="200" type="text" name="dob" required="required" class="form-control datepicker" placeholder="Enter DOB" />
                </div>
				<div class="form-group col-md-6">
                    <label class="control-label">Blood group</label>
                    <input maxlength="100" name="boold_group" id="boold_group" type="text" required="required" class="form-control" placeholder="Enter Blood group" />
                </div>
				
				<div class="form-group col-md-6">
                    <label class="control-label">Gender *</label>
					<select class="form-control" required id="gender" name="gender">
						<option value="">Select</option>
						<option value="Male">Male</option>
						<option value="Female">Female</option>
					</select>					
                </div>
				<div class="form-group col-md-6">
                    <label class="control-label">Marital status *</label>
					<select class="form-control" required id="gender" name="marital_status" onchange="get_marital_status(this.value);">
						<option value="">Select</option>
						<option value="Yes">Yes</option>
						<option value="No">No</option>
					</select>					
                </div>
				<span id="m_status_details" style="display:none;">
				<div class="form-group col-md-6">
                    <label class="control-label">Marriage Date</label>
                    <input maxlength="200" type="text" id="marriage_date" name="marriage_date" required="required" class="form-control datepicker" placeholder="Enter Marriage Date" />
                </div>
				<div class="form-group col-md-6">
                    <label class="control-label">Spouse</label>
                    <input maxlength="200" type="text" id="spouse" name="spouse" required="required" class="form-control" placeholder="Enter Spouse Name" />
                </div>
				<div class="form-group col-md-6">
                    <label class="control-label">Spouse Date Of Birth</label>
                    <input maxlength="200" type="text" id="spouse_dob" name="spouse_dob" required="required" class="form-control datepicker" placeholder="Enter Spouse Date Of Birth" />
                </div>
				<div class="form-group col-md-6">
                    <label class="control-label">Children</label>
                    <input maxlength="200" type="text" name="children_one" id="children_one"  class="form-control" placeholder="Enter Children Name" />
                </div>
				<div class="form-group col-md-6">
                    <label class="control-label">Children Date Of Birth</label>
                    <input maxlength="200" type="text" id="children_one_dob" name="children_one_dob" class="form-control datepicker" placeholder="Enter Children Date Of Birth" />
                </div>
				<div class="form-group col-md-6">
                    <label class="control-label">Children</label>
                    <input maxlength="200" type="text" name="children_two" id="children_two"  class="form-control" placeholder="Enter Children Name" />
                </div>
				<div class="form-group col-md-6">
                    <label class="control-label">Children Date Of Birth</label>
                    <input maxlength="200" type="text" id="children_two_dob" name="children_two_dob"  class="form-control datepicker" placeholder="Enter Children Date Of Birth" />
                </div>
				<div class="form-group col-md-6">
                    <label class="control-label">Children</label>
                    <input maxlength="200" type="text" name="children_three" id="children_three"  class="form-control" placeholder="Enter Children Name" />
                </div>
				<div class="form-group col-md-6">
                    <label class="control-label">Children Date Of Birth</label>
                    <input maxlength="200" type="text" id="children_three_dob" name="children_three_dob"  class="form-control datepicker" placeholder="Enter Children Date Of Birth" />
                </div>
				</span>
				<div class="form-group col-md-6">
                    <label class="control-label">Aadhar Number *</label>
                    <input maxlength="200" type="text" name="aadhar_num" required="required" class="form-control" placeholder="Enter Aadhar Number" />
                </div>
				<div class="form-group col-md-6">
                    <label class="control-label">Pan Number *</label>
                    <input maxlength="200" type="text" name="pan_num" required="required" class="form-control" placeholder="Enter Pan Number" />
                </div>
				<div class="form-group col-md-6">
                    <label class="control-label">Permanent address *</label>
                    <input maxlength="200" type="text" name="per_add" required="required" class="form-control" placeholder="Enter Permanent Address" />
                </div>
				<div class="form-group col-md-6">
                    <label class="control-label">Current address *</label>
                    <input maxlength="200" type="text" name="temp_add" required="required" class="form-control" placeholder="Enter Current address" />
                </div>
				<div class="form-group col-md-6">
                    <label class="control-label">Profile pic *</label>
                    <input maxlength="200" name="profile_pic" type="file" required="required" class="form-control"  />
                </div>
				<div class="form-group col-md-6">
                    <label class="control-label">Upload Aadhar*</label>
                    <input maxlength="200" name="aadhar_pic" type="file" required="required" class="form-control"  />
                </div>
				<div class="form-group col-md-6">
                    <label class="control-label">Pan *</label>
                    <input maxlength="200" type="file" name="pan_pic" required="required" class="form-control" />
                </div>
				<div class="form-group col-md-6">
                    <label class="control-label">Upload kyc</label>
                    <input maxlength="200" type="file" name="kye" required="required" class="form-control" />
                </div>
				<div class="clearfix">&nbsp;</div>
                <button class="btn btn-primary nextBtn pull-right text-white" type="button">Next</button>
				
            </div>
        </div>    
        <div class="panel panel-primary setup-content" id="step-3">
            <div class="panel-heading">
                 <h3 class="panel-title">Salary Details</h3>
            </div>
            <div class="panel-body">
                 <div class="form-group col-md-6">
				    	<label for="telephone">Basic Salary</label>
				    	<input type="text" class="form-control"  name="basicsalary" id="basicsalary" required="true"  placeholder="Enter Basic Salary" value="<?php echo isset($userdetails['basicsalary'])?$userdetails['basicsalary']:''; ?>">
		  			</div>
					<div class="form-group col-md-6">
				    	<label for="telephone">HRA</label>
				    	<input type="text" class="form-control"  name="hra" id="hra"  placeholder="Enter HRA" required="true" value="<?php echo isset($userdetails['hra'])?$userdetails['hra']:''; ?>">
		  			</div>
					<div class="form-group col-md-6">
				    	<label for="telephone">Special Allowance</label>
				    	<input type="text" class="form-control"  name="specialallowance" id="specialallowance" required="true"  placeholder=" Enter Special Allowance" value="<?php echo isset($userdetails['specialallowance'])?$userdetails['specialallowance']:''; ?>">
		  			</div>
					<div class="form-group col-md-6">
				    	<label for="telephone">Conveyance</label>
				    	<input type="text" class="form-control"  name="conveyance" id="conveyance" required="true"  placeholder="Enter Conveyance" value="<?php echo isset($userdetails['conveyance'])?$userdetails['conveyance']:''; ?>">
		  			</div>
					<div class="form-group col-md-6">
				    	<label for="telephone">Medical Reimbursement</label>
				    	<input type="text" class="form-control"  name="medicalreimbursement" id="medicalreimbursement" required="true"  placeholder="Enter  Medical Reimbursement" value="<?php echo isset($userdetails['medicalreimbursement'])?$userdetails['medicalreimbursement']:''; ?>">
		  			</div>
		  			<div class="form-group col-md-6">
				    	<label for="telephone">PF Number</label>
				    	<input type="text" class="form-control" name="pfnumber" id="pfnumber" required="true"  placeholder="Enter PF Number" value="<?php echo isset($userdetails['pfnumber'])?$userdetails['pfnumber']:''; ?>">
		  			</div>
					<div class="form-group col-md-6">
				    	<label for="telephone">PF - Employee Contribution</label>
				    	<input type="text" class="form-control" name="employee_pfamount" id="employee_pfamount" required="true" placeholder="Enter Employee PF Amount" value="<?php echo isset($userdetails['employee_pfamount'])?$userdetails['employee_pfamount']:''; ?>">
		  			</div>
					<div class="form-group col-md-6">
				    	<label for="telephone"> PF - Employer Contribution</label>
				    	<input type="text" class="form-control" name="employer_pfamount" id="employer_pfamount" required="true" placeholder="Enter Employer PF Amount" value="<?php echo isset($userdetails['employer_pfamount'])?$userdetails['employer_pfamount']:''; ?>">
		  			</div>
					<div class="form-group col-md-6">
				    	<label for="telephone">Professional Tax</label>
				    	<input type="text" class="form-control" name="pt" id="pt" required="true" placeholder="Enter PT Amount" value="<?php echo isset($userdetails['pt'])?$userdetails['pt']:''; ?>">
		  			</div>
		  			<div class="form-group col-md-6">
				    	<label for="telephone">ESI Number</label>
				    	<input type="text" class="form-control" name="employee_esi" id="employee_esi" required="true" placeholder="Enter ESI Number" value="">
		  			</div>
					
					<div class="form-group col-md-6">
				    	<label for="telephone">ESI - Employee Contribution</label>
				    	<input type="text" class="form-control" name="employee_contribution_esi" id="employee_contribution_esi" required="true" placeholder="Enter Employee ESI Amount" value="">
		  			</div>
					<div class="form-group col-md-6">
				    	<label for="telephone"> ESI - Employer Contribution</label>
				    	<input type="text" class="form-control" name="employer_contribution_esi" id="employer_contribution_esi" required="true" placeholder="Enter Employer ESI Amount" value="">
		  			</div>
		  			<div class="form-group col-md-6">
				    	<label for="telephone">Others</label>
				    	<input type="text" class="form-control" name="others" id="others" required="true" placeholder="Enter Any Other Amount" value="">
		  			</div>		  			
					<div class="form-group col-md-6">
				    	<label for="telephone">Bank Name</label>
				    	<input type="text" class="form-control" name="bankname" id="bankname" required="true"   placeholder="Enter Bank Name" value="">
		  			</div>
					<div class="form-group col-md-6">
				    	<label for="telephone">IFSC Code</label>
				    	<input type="text" class="form-control" name="ifsc" id="ifsc" required="true"   placeholder="Enter IFSC Code" value="">
		  			</div>
					<div class="form-group col-md-6">
				    	<label for="telephone">Bank Account No</label>
				    	<input type="text" class="form-control" name="bankaccountnumber" required="true"  id="bankaccountnumber"  placeholder="Enter Bank Account No" value="">
		  			</div>
					<div class="form-group col-md-6">
				    	<label for="telephone">Advance (If Any)</label>
				    	<input type="text" class="form-control" name="advance" id="advance" required="true" placeholder="Enter Advance Amount" value="">
		  			</div>
					
					<div class="form-group col-md-6">
				    	<label for="telephone"> Employee Buyout (If Any)</label>
				    	<input type="text" class="form-control" name="employee_buyout" id="employee_buyout" placeholder="Enter Employee Buyout (If Any)" value="">
		  			</div>
					
					<div class="form-group col-md-6">
				    	<label for="telephone"> Relocation Allowance (If Any)</label>
				    	<input type="text" class="form-control" name="relocation_allowance" id="relocation_allowance" placeholder="Enter Relocation Allowance (If Any)" value="">
		  			</div>
					<div class="form-group col-md-6">
				    	<label for="telephone">Net Salary</label>
				    	<input type="text" class="form-control" name="netsalary" id="netsalary" placeholder="Enter Net Salary" value="">
		  			</div>
					<div class="form-group col-md-6">
				    	<label for="telephone">Gross Salary</label>
				    	<input type="text" class="form-control" name="gross_salary" id="gross_salary" placeholder="Enter Gross Salary" value="">
		  			</div>
					
				<div class="clearfix">&nbsp;</div>
                <button class="btn btn-success pull-right" type="submit">Finish!</button>
            </div>
        </div>
    </form>
</div>
</div>
     

	 
   </section>
</div>

<script type="text/javascript">

function get_notice_period(val){
	if(val=='Yes'){
		$('#p_notice_period').show();
	}else{
		$('#p_notice_period').hide();
		$('#n_p_months').val('');
	}
}
function get_type_of_emp(val){
	if(val=='probation'){
		$('#p_emp_months').show();
	}else{
		$('#p_emp_months').hide();
		$('#months').val('');
	}
}
function get_marital_status(val){
	if(val=='Yes'){
		$('#m_status_details').show();
	}else{
		$('#m_status_details').hide();
		$('#spouse').val('');
		$('#children_one').val('');
		$('#children_two').val('');
		$('#children_three').val('');
		$('#children_three_dob').val('');
		$('#children_two_dob').val('');
		$('#children_one_dob').val('');
		$('#spouse_dob').val('');
		$('#marriage_date').val('');
	}
}
function get_employeid(b_id){
	if(b_id!=''){
		jQuery.ajax({
		url: "<?php echo base_url('employee/get_brach_code');?>",
		data: {
			bid: b_id,
			},
		dataType: 'json',
		type: 'POST',
		success: function (data){
			if(data.msg==1){
				 $('#code').empty();
				 $('#code').val(data.code);
				}
			}
		});
		
	}
}
$(document).ready(function () {

    var navListItems = $('div.setup-panel div a'),
        allWells = $('.setup-content'),
        allNextBtn = $('.nextBtn');

    allWells.hide();

    navListItems.click(function (e) {
        e.preventDefault();
        var $target = $($(this).attr('href')),
            $item = $(this);

        if (!$item.hasClass('disabled')) {
            navListItems.removeClass('btn-success').addClass('btn-default');
            $item.addClass('btn-success');
            allWells.hide();
            $target.show();
            $target.find('input:eq(0)').focus();
        }
    });

    allNextBtn.click(function () {
        var curStep = $(this).closest(".setup-content"),
            curStepBtn = curStep.attr("id"),
            nextStepWizard = $('div.setup-panel div a[href="#' + curStepBtn + '"]').parent().next().children("a"),
            curInputs = curStep.find("input[type='text'],input[type='url']"),
            isValid = true;

        $(".form-group").removeClass("has-error");
        for (var i = 0; i < curInputs.length; i++) {
            if (!curInputs[i].validity.valid) {
                isValid = false;
                $(curInputs[i]).closest(".form-group").addClass("has-error");
            }
        }

        if (isValid) nextStepWizard.removeAttr('disabled').trigger('click');
    });

    $('div.setup-panel div a.btn-success').trigger('click');
});

$(document).ready(function() {
   	 $('#defaultForm').bootstrapValidator({
   		fields: {
               date: {
                   validators: {
					notEmpty: {
						message: 'Date is required'
					}
				}
               }, festival: {
                   validators: {
					notEmpty: {
						message: 'Festival is required'
					}
				}
               },day_name: {
                   validators: {
					notEmpty: {
						message: 'Day Name is required'
					}
				}
               }
           }
       });
	   $('.datepicker').on('changeDate ', function(e) {
		$('#defaultForm').bootstrapValidator('revalidateField', 'date');
		});
   
   });
   
</script>

