<div class="content-wrapper">
   <section class="content-header mb-4">
      <h1>
         Assign Task View
      </h1>
      <ol class="breadcrumb">
         <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a></li>
         <li><a href="<?php echo base_url('assignwork/index'); ?>"><i class="fa fa-list"></i> list</a></li>
         <li class="active">Assign Task View</li>
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
						<legend class="scheduler-border">Assign Task</legend>
                     	<?php $csrf = array(
								'name' => $this->security->get_csrf_token_name(),
								'hash' => $this->security->get_csrf_hash()
						); ?>
										<input type="hidden" name="<?=$csrf['name'];?>" value="<?=$csrf['hash'];?>" />

					 <div class=" row ">
                        <div class="col-md-6 table-responsive">
						<table class="table table-bordered">
							<tr>
								<td><strong>Assign To</strong></td>
								<td>Siva kumar reddy</td>
							</tr>
							<tr>
								<td><strong>Assigned date</strong></td>
								<td><?php echo isset($w_d['from_date'])?$w_d['from_date']:''; ?></td>
							</tr>
							<tr>
								<td><strong>Expected date of completion</strong></td>
								<td><?php echo isset($w_d['to_date'])?$w_d['to_date']:''; ?></td>
							</tr>
							<tr>
								<td><strong>No of Days</strong></td>
								<td><?php echo isset($w_d['total_day'])?$w_d['total_day']:''; ?></td>
							</tr>
							
						</table>
												   
                        </div> 
						<div class="col-md-6 table-responsive">
						<table class="table table-bordered">
							<tr>
							<td>
							<p><strong>Task:</strong> <?php echo isset($w_d['message'])?$w_d['message']:''; ?></p>
							</td>
							</tr>
						</table>
												   
                        </div> 
					</div>						
				  </fieldset>
                  <div class="clearfix">&nbsp;</div>
				  <div class="table-responsive">
				  <?php if(isset($w_c_list) && count($w_c_list)>0){ ?>
					  <table id="example1" class="table table-bordered ">
						  <thead>
							<tr>
								<th>Comment</th>
								<th>Sent By</th>
								<th>Date & Time</th>
							</tr>
							<tbody>						
								<?php foreach($w_c_list as $li){ ?>
								<tr>
									<td><?php echo isset($li['commet'])?$li['commet']:''; ?></td>
									<td><?php echo isset($li['name'])?$li['name']:''; ?></td>
									<td><?php echo isset($li['created_at'])?$li['created_at']:''; ?></td>
								</tr>
								<?php } ?>
						  </thead>
					  </table>
				  <?php } ?>
				  </div>
                  <div class="clearfix">&nbsp;</div>
				  <form action="<?php echo base_url('assignwork/workcommentpost'); ?>" method="post">
					<input type="hidden" name="a_w_id" value="<?php echo isset($a_w_id)?$a_w_id:''; ?>">
					<div class="form-group col-md-12">
						<textarea name="commet"  class="form-control" colspan="12" placeholder="Enter Comment" required></textarea>
					</div>
					<div class="form-group col-md-6">
					<button type="submit" class="btn btn-primary">Submit</button>
					</div>
				  </form>                 
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

$(document).ready(function() {

   	 $('#defaultForm').bootstrapValidator({
   		fields: {
               from_date: {
                   validators: {
					notEmpty: {
						message: 'From date is required'
					}
				}
               }, to_date: {
                   validators: {
					notEmpty: {
						message: 'TO date is required'
					}
				}
               }, message: {
                   validators: {
					notEmpty: {
						message: 'Comment is required'
					}
				}
               }, emp_id: {
                  validators: {
					notEmpty: {
						message: 'Employee Name is required'
					}
				}
               }
           }
       });
		$('.datepicker').on('changeDate ', function(e) {
		$('#defaultForm').bootstrapValidator('revalidateField', 'from_date');
		});
		$('.datepicker').on('changeDate ', function(e) {
		$('#defaultForm').bootstrapValidator('revalidateField', 'to_date');
		});
   
   });
</script>

