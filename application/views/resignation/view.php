<div class="content-wrapper">
   <section class="content-header mb-4">
      <h1>
         Status Resignation
      </h1>
      <ol class="breadcrumb">
         <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a></li>
         <li><a href="<?php echo base_url('resignation/lists'); ?>"><i class="fa fa-list"></i> list</a></li>
         <li class="active">Status Resignation</li>
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
						<legend class="scheduler-border">Status Resignation</legend>
                  <form id="defaultForm" method="post" autocomplete="off" class="form-horizontal" action="<?php echo base_url('resignation/updatepost'); ?>" enctype="multipart/form-data">
                     	<?php $csrf = array(
								'name' => $this->security->get_csrf_token_name(),
								'hash' => $this->security->get_csrf_hash()
						); ?>
					<input type="hidden" name="<?=$csrf['name'];?>" value="<?=$csrf['hash'];?>" />
					<input type="hidden" name="r_id" value="<?php echo isset($r_details['r_id'])?$r_details['r_id']:''; ?>">
					<input type="hidden" name="stat" value="<?php echo isset($r_type)?$r_type:''; ?>">

					 <div class=" row ">
                        <div class=" col-md-12" style="<?php if(isset($r_type) && $r_type==1){ echo "display:none;";} ?>">
                           
						   <div class="form-group col-md-12">
                              <label class="col-lg-2 control-label">Comment</label>
                              <div class="col-md-10">
                                 <textarea type="text" class="form-control" name="comment" placeholder="Enter Comment" /></textarea>
                              </div>
                           </div>
						   
                        </div>
						<div class=" col-md-12" style="<?php if(isset($r_type) && $r_type!=1){ echo "display:none;";} ?>">
                           
						   <div class="form-group col-md-6">
                              <label class="col-lg-2 control-label">Type</label>
                              <div class="col-md-10">
                                 <select class="form-control" name="type" onchange="get_type_of_accept(this.value);">
									<option value="">Select</option>
									<option value="with notice period">With Notice Period</option>
									<option value="Final date">Final Date</option>								 
								 </select>
                              </div>
                           </div>
						   <div class="clearfix">&nbsp;</div>
						   <span id="p_notice_period" style="display:none;">
							<div class="form-group col-md-6">
								<label class="control-label">Months</label>
								<select class="form-control" required id="n_p_months" name="n_p_months" >
									<option value="">Select</option>
									<option value="1">1 Month</option>
									<option value="2">2 Months</option>
									<option value="3">3 Months</option>
									<option value="4">4 Months</option>
									<option value="5">5 Months</option>
									<option value="6">6 Months</option>
								</select>					
							</div>
							</span>
							<span id="p_final_date" style="display:none;">
								<div class="form-group col-md-6">
								  <label class="col-lg-2 control-label">Final Date</label>
								  <div class="col-md-10">
									 <input type="text" class="form-control datepicker" name="final_date" placeholder="Enter Final Date" />
								  </div>
                              </div>
							</span>
						   
						  
                        </div>
						<div class="form-group">
                           <div class="col-lg-6 text-center">
                              <button type="submit" class="btn btn-primary  " name="signup" value="Sign up">Submit</button>
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
function get_type_of_accept(val){
	if(val=='with notice period'){
		$('#p_notice_period').show();
		$('#p_final_date').hide();
	}else{
		$('#p_notice_period').hide();
		$('#p_final_date').show();
	}
}
$(document).ready(function() {

   	 $('#defaultForm').bootstrapValidator({
   		fields: {
               type: {
                   validators: {
					notEmpty: {
						message: 'Type is required'
					}
				}
               },final_date: {
                   validators: {
					notEmpty: {
						message: 'Date is required'
					}
				}
               },  comment: {
                   validators: {
					notEmpty: {
						message: 'Comment is required'
					}
				}
               }
           }
       });
		$('.datepicker').on('changeDate ', function(e) {
		$('#defaultForm').bootstrapValidator('revalidateField', 'final_date');
		});
		
   
   });
</script>

