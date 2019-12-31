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
         Edit Profile
      </h1>
      <ol class="breadcrumb">
         <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a></li>
         <li class="active">Profile Details</li>
      </ol>
   </section>
   <section class="content">
      <div class="container">
      <div class="col-md-10">
    <div class="stepwizard" style="margin:10px 0px">
        
    </div>
    
    <form role="form" action="<?php echo base_url('employee/empeditpost'); ?>" method="POST" enctype="multipart/form-data">
	<input type="hidden" name="a_id" id="a_id" value="<?php echo isset($emp_d['a_id'])?$emp_d['a_id']:''; ?>">
        <div class="panel panel-primary" id="">
            <div class="panel-heading">
                 <h3 class="panel-title">Employee Details</h3>
            </div>
            <div class="panel-body">
                 <div class="form-group col-md-6">
                    <label class="control-label">Name </label>
                    <input maxlength="100"  type="text" name="name" value="<?php echo isset($emp_d['name'])?$emp_d['name']:''; ?>" required="required" class="form-control" placeholder="Enter Name" />
                </div>
                 <div class="form-group col-md-6">
                    <label class="control-label">Department </label>
                    <select readonly name="dep_id" class="form-control" required>
					<option value="">Select</option>
					<?php if(isset($dep_list) && count($dep_list)>0){ ?>
					<?php foreach($dep_list as $li){ ?>
						<?php if($emp_d['dep_id']==$li['d_id']){ ?>
							<option selected value="<?php echo $li['d_id']; ?>"><?php echo $li['name']; ?></option>
						<?php }else{ ?>
							<option value="<?php echo $li['d_id']; ?>"><?php echo $li['name']; ?></option>
						<?php } ?>
					<?Php } ?>
					<?Php } ?>
					</select>
                </div>
				<div class="form-group col-md-6">
                    <label class="control-label">Designation * </label>
                    <input maxlength="100" type="text" name="designation"  readonly class="form-control" value="<?php echo isset($emp_d['designation'])?$emp_d['designation']:''; ?>"  placeholder="Enter Designation" />
                </div>
				<div class="form-group col-md-6">
                    <label class="control-label">Personal Email * </label>
                    <input maxlength="100" type="text" name="per_mail" value="<?php echo isset($emp_d['per_mail'])?$emp_d['per_mail']:''; ?>"  required="required" class="form-control" placeholder="Enter Personal Email" />
                </div>
				<div class="form-group col-md-6">
                    <label class="control-label">Mobile Number * </label>
                    <input maxlength="100" type="text" name="mobile" value="<?php echo isset($emp_d['mobile'])?$emp_d['mobile']:''; ?>" required="required" class="form-control" placeholder="Enter Mobile Number" />
                </div>
				<div class="form-group col-md-6">
                    <label class="control-label">Emergency Contact number</label>
                    <input maxlength="100" name="emergency_contact_number" id="emergency_contact_number" type="text" value="<?php echo isset($emp_d['emergency_contact_number'])?$emp_d['emergency_contact_number']:''; ?>" required="required" class="form-control" placeholder="Enter Emergency Contact number" />
                </div>
				<div class="form-group col-md-6">
                    <label class="control-label">Office Email * </label>
                    <input maxlength="100" type="text" readonly name="off_mail" value="<?php echo isset($emp_d['off_mail'])?$emp_d['off_mail']:''; ?>" required="required" class="form-control" placeholder="Enter Office Email" />
                </div>
				<div class="form-group col-md-6">
                    <label class="control-label">Branch  </label>
					<select readonly name="branch_id" class="form-control" onchange ="get_employeid(this.value);" required>
					<option value="">Select</option>
					<?php if(isset($branch_list) && count($branch_list)>0){ ?>
					<?php foreach($branch_list as $li){ ?>
						<?php if($emp_d['branch_id']==$li['b_id']){ ?>
							<option selected value="<?php echo $li['b_id']; ?>"><?php echo $li['name']; ?></option>
						<?php }else{ ?>
							<option value="<?php echo $li['b_id']; ?>"><?php echo $li['name']; ?></option>
						<?php } ?>
					<?Php } ?>
					<?Php } ?>
					</select>
                </div>
				<div class="form-group col-md-6">
                    <label class="control-label">Code *  </label>
                    <input maxlength="100" name="code" readonly id="code" value="<?php echo isset($emp_d['code'])?$emp_d['code']:''; ?>" type="text" required="required" class="form-control" placeholder="Enter Last Name" />
                </div>
				
				<div class="form-group col-md-6">
                    <label class="control-label">DOJ   </label>
                    <input maxlength="100" name="doj" readonly id="doj" value="<?php echo isset($emp_d['doj'])?$emp_d['doj']:''; ?>" type="text" required="required" class="form-control datepicker" placeholder="Enter DOJ" />
                </div>
			
				<div class="clearfix">&nbsp;</div>
                <button class="btn btn-primary nextBtn pull-right text-white" type="submit">Update</button>
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
		url: "<?php echo base_url('employee/get_edit_brach_code');?>",
		data: {
			bid: b_id,
			aid: $('#a_id').val(),
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

