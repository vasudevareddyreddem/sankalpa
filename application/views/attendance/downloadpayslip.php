
<?php //echo '<pre>';print_r($payslips_list);exit; ?>
<div class="content-wrapper">
<section class="content-header">
      <h1>
       Generate Payslip
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li class="active"> Generate Payslip</li>
      </ol>
    </section>
   <section class="content">
      <div class="row">
        <!-- left column -->
        <div class="col-md-12">
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title"> Generate Payslip</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
			<div style="padding:20px;">
            <form id="defaultForm" method="post" class="" action="<?php echo base_url('payslip/post'); ?>" enctype="multipart/form-data">
					<?php $csrf = array(
								'name' => $this->security->get_csrf_token_name(),
								'hash' => $this->security->get_csrf_hash()
						); ?>
										<input type="hidden" name="<?=$csrf['name'];?>" value="<?=$csrf['hash'];?>" />

      
						
						<div class="col-md-6">
							<div class="form-group">
								<label class=" control-label">Year</label>
								<div class="">
									<?php $y=range(date("Y"), 2018); ?>
									<select onchange="getpayslips(this.value)" id="year" name="year" class="form-control">
											<option value="">Select</option>
											<?php foreach($y as $lis){ ?>
												<option value="<?php echo $lis; ?>"><?php echo $lis; ?></option>
											<?php } ?>							
									</select>
								</div>
							</div>
                        </div>
						<div class="col-md-6">
							<div class="form-group">
								<label class=" control-label">Month</label>
								<div class="">
									<select  onchange="getpayslips(this.value)" id="month" name="month" class="form-control">
											<option value="">Select</option>
											<?php if(isset($payslips_list) && count($payslips_list)>0){ ?>
												<?php foreach($payslips_list as $lis){ ?>
													<option value="<?php echo $lis['date'].'_'.$lis['a_id']; ?>"><?php echo $lis['month']; ?></option>
												<?php } ?>								
											<?php } ?>								
									</select>
								</div>
							</div>
                        </div>
						<div class="col-md-6">
							<div class="form-group">
								<label class=" control-label">&nbsp;</label>
								<div class="">
									<a id="documentfilelink" style="display:none;" type="button" class="btn btn-default">Download <i class="fa fa-download ml-1"></i></a>
								</div>
							</div>
                        </div>
						
						<div class="clearfix">&nbsp;</div>
						
						
                    </form>
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

 function getpayslips(){
	  $('#documentfilelink').hide();
	 var y=$('#year').val();
	 var m=$('#month').val();
	 if(m!='' && y!=''){
	  $('#documentfilelink').show();
		$.ajax({
			type: "POST",
			url: "<?php echo base_url('employee/getpayslips');?>",
				data: {
				form_key : window.FORM_KEY,
				emp_id: m,
				years: y,
				},
				cache: false,
				success: function(data)
				{
				var parsedData = JSON.parse(data);
				var url='<?php echo base_url('assets/payslips/'); ?>'+parsedData.inovie_name;
				$('a#documentfilelink').attr({target: '_blank', href  : url});
				} 
			});
	 }
	
	  
  }
</script>

