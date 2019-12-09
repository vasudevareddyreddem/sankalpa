<div class="content-wrapper">
   <section class="content-header mb-4">
      <h1>
         Notification View
      </h1>
      <ol class="breadcrumb">
         <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a></li>
         <li class="active">View</li>
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
											<legend class="scheduler-border">All  Notifications</legend>
									  <div class="panel-group" id="accordion">
												 
												 <?php foreach($notification as $List){ ?>
						<div class="panel panel-default">
						   <a href="#" onclick="opennotification('<?php echo $List['n_id']; ?>')"><div data-toggle="collapse" data-parent="#accordion" class="panel-heading" href="#collapse1<?php echo $List['n_id']; ?>">
							<h4  href="#collapse1<?php echo $List['n_id']; ?>" class="panel-title expand">
							   <div class="right-arrow pull-right">+</div>
							  <span><span class="notification-icon circle deepPink-bgcolor"><?php echo ucfirst($List['name']); ?></span> : <?php echo $List['title']; ?> </span>
							  <span class="pull-right view-all-time"><?php echo date('M j h:i A',strtotime(htmlentities($List['created_at'])));?> &nbsp;&nbsp;</span> 
							</h4>
						  </div></a>
						  <div id="collapse1<?php echo $List['n_id']; ?>" class="panel-collapse collapse">
							<div class="panel-body"><?php echo $List['msg']; ?></div>
						  </div>
						</div>
												 <?php } ?>
					   
						
					  </div> 
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

<script>
$(function() {
  $(".expand").on( "click", function() {
    // $(this).next().slideToggle(200);
    $expand = $(this).find(">:first-child");
    
    if($expand.text() == "+") {
      $expand.text("-");
    } else {
      $expand.text("+");
    }
  });
});
</script>

