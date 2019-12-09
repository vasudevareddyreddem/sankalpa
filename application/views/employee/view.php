<style>
.backdrop{
	opacity: 0.1;
}
.fc-time{
	display:none;
}
</style>
<div class="content-wrapper">
  <section class="content">
	<div class="row">
	   <div class="col-md-12 bg-white">
            <div class=" ">
               <div style="padding:10px;">
                     	<?php $csrf = array(
								'name' => $this->security->get_csrf_token_name(),
								'hash' => $this->security->get_csrf_hash()
						); ?>
					<input type="hidden" name="<?=$csrf['name'];?>" value="<?=$csrf['hash'];?>" />
					 <fieldset class="scheduler-border">
						<legend class="scheduler-border"><?php echo isset($u_d['name'])?$u_d['name']:''; ?> details</legend>
							 <div class="row">
								<div class="col-md-8 col-md-offset-2" >
									<br />
									<div style="border:1px solid #ddd" id="bootstrapModalFullCalendar"></div>
								</div>
							</div>
				   </fieldset>
               </div>
            </div>
         </div>
      </div>
   </section>
</div> 
<div id="eventContent" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content" style="border:solid 3px #3f399d">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Date :  <span id="sdate"></span></h4>
      </div>
      <div class="modal-body">
	  <table class="table table-bordered table-striped">
			<tr>
			<th>Login Time</th><td><span id="startTime"></span></td>
			</tr>
			<tr>
				<th>Logout Time </th><td> <span id="endTime"></span></td>
			</tr>
			<tr>
				<th>Total working time</th><td> <span id="total_work_time"></span></td>
			</tr>
			<tr>
		
			<td>
		
				<form action="<?php echo base_url('leaves/add'); ?>" method="post" >
				<input type="hidden" id="l_dat" name="l_dat" value="">
				<button type="submit" class="btn btn-primary" >Apply Leave</button>
				</form>
			</td>
			<td>
			<form onsubmit="return validation_check();" action="<?php echo base_url('employee/attendance_regulation'); ?>" method="post" >
			<input type="hidden" name="a_t_url" id="a_t_url" value="">
			<input type="hidden" name="feature_date" id="feature_date" value="">
			<strong><button type="submit"  class="btn btn-warning" >Attendance regulation</button></strong>
			</form>
			</td>
		
			</tr>
		
			<tr>
				<td colspan="2"><span id="a_t_reason"></span></td>
			</tr>
			
		</table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
<script>
function validation_check(){
		if($('#feature_date').val()==''){
			$('#a_t_reason').empty();
			$('#a_t_reason').append('Features dates Attendance regulations not possible');
			return false;
		}
}
        $(document).ready(function() {
            $('#bootstrapModalFullCalendar').fullCalendar({
                header: {
                    left: '',
                    center: 'prev title next',
                    right: ''
                },
                eventClick: function (event, jsEvent, view) {
                    //set the values and open the modal
                    $("#total_work_time").html(event.title);
                    $("#sdate").html(event.ssdate);
                    $("#l_dat").val(event.ssdate);
                    $("#feature_date").val(event.intime);
                    $("#startTime").html(event.intime);
                    $("#endTime").html(event.outime);
                    $("#eventLink").attr('href', event.url);
                    $('#eventContent').modal();
                    $('#a_t_url').val(event.ssdate);
                    $('#a_t_reason').empty();
                    $('#a_t_reason').append(event.a_t_reason);
                    return false;
                },
                events:
                [
				<?php if(isset($log_data) && count($log_data)>0){ ?>				
					<?php foreach($log_data as $li){ ?>
					   {
						  "title":"<?php echo $li['hrs']; ?>",
						  "allday":"false",
						  "description":"'<?php echo $li['date']; ?>',",
						  "start": '<?php echo $li['date']; ?>',
						  "ssdate": '<?php echo $li['date']; ?>',
						  "color" : '<?php echo $li['color']; ?>',
						  "intime" : '<?php echo $li['intime']; ?>',
						  "outime" : '<?php echo $li['outime']; ?>',
						  "a_t_reason" : '<?php echo $li['res_text']; ?>',
					   },
					<?php } ?>
				<?php } ?>
                   
                ]
            });
        });
    </script>
