<!DOCTYPE html>
<html>
<head>
<style>
table, th {
  border: 1px solid black;
  padding:2px 15px;
  font-size:13px
}
table, td,{
  border: 1px solid black;
  padding:2px 15px;
  font-size:10px
}
table {
  border-collapse: collapse;
  width: 100%;
  padding:10px;
}
*{
	padding:0;
	margin:0;
}
p{
margin:2px
}
.bord_l{
border-left:0px solid #fff
}
h3 {
  text-align: center;
}

</style>
</head>
<body>

<table>
	<tr style="border-bottom:0px solid #fff">
		<td style="border-right:0px solid #fff;border-bottom:0px solid #fff"><img style="height:80px" src="<?php echo base_url(); ?>assets/back/img/logo.png"></td>
		<td style="text-align:center;border-left:0px solid #fff;border-bottom:0px solid #fff">
			<h2 style="font-size:15px;"><strong>ISM EDUTECH PRIVATE LIMITED</strong></h2>
			<p> <strong>407, 4TH FLOOR, TOWER B, GLOBAL BUSINESS PARK, MG ROAD GURUGRAM-122002 HARYANA</strong></p>
			<div style="font-size:14px;"><strong>
			Payslip for the month of <?php echo isset($post['month'])?$post['month']:''; ?> <?php echo isset($post['year'])?$post['year']:''; ?> 
			</strong>
			</div>
		</td>
	</tr>
	
</table>


<table style="width:100%">
	<tr>
		<td style="width:20%;border:none"><strong>Employee Name</strong></td>
		<th style="width:30%;text-align:left;border:none">:&nbsp;<strong><?php echo isset($emp_d_detail['name'])?$emp_d_detail['name']:''; ?></strong></th>
		<td style="width:20%;border:none"><strong>Code</strong></td>
		<th style="width:30%;text-align:left;border:none">:&nbsp;<strong><?php echo isset($emp_d[0])?$emp_d[0]:''; ?></strong></th>
	</tr>
	<tr>
		<td style="width:20%;border:none"><strong>Father's Name</strong></td>
		<th style="width:30%;text-align:left;border:none">:&nbsp;<strong><?php echo isset($emp_d_detail['father_name'])?$emp_d_detail['father_name']:''; ?></strong></th>
		<td style="width:20%;border:none"><strong>DOJ</strong></td>
		<th style="width:30%;text-align:left;border:none">:&nbsp;<strong><?php echo isset($emp_d_detail['doj'])?$emp_d_detail['doj']:''; ?></strong></th>
	</tr>
	<tr>
		<td style="width:20%;border:none"><strong>PAN</strong></td>
		<th style="width:30%;text-align:left;border:none">:&nbsp;<strong><?php echo isset($emp_d[1])?$emp_d[1]:''; ?></strong></th>
		<td style="width:20%;border:none"><strong>Bank A/c No.</strong></td>
		<th style="width:30%;text-align:left;border:none">:&nbsp;<strong><?php echo isset($emp_d[2])?$emp_d[2]:''; ?></strong></th>
	</tr>
	<tr>
		<td style="width:20%;border:none"><strong>PF A/c No</strong></td>
		<th style="width:30%;text-align:left;border:none">:&nbsp;<strong><?php echo isset($emp_d[3])?$emp_d[3]:''; ?></strong></th>
		<td style="width:20%;border:none"><strong>ESI A/c No</strong></td>
		<th style="width:30%;text-align:left;border:none">:&nbsp;<strong><?php echo isset($emp_d[4])?$emp_d[4]:''; ?></strong></th>
	</tr>
	<tr>
		<td style="width:20%;border:none"><strong>Branch</strong></td>
		<th style="width:30%;text-align:left;border:none">:&nbsp;<strong><?php echo isset($emp_d_detail['branchname'])?$emp_d_detail['branchname']:''; ?></strong></th>
		<td style="width:20%;border:none"><strong>Department</strong></td>
		<th style="width:30%;text-align:left;border:none">:&nbsp;<strong><?php echo isset($emp_d_detail['departname'])?$emp_d_detail['departname']:''; ?></strong></th>
	</tr>
	
	<tr>
		<td style="width:20%;border:none"><strong>Designation</strong></td>
		<th style="width:30%;text-align:left;border:none">:&nbsp;<strong><?php echo isset($emp_d_detail['designation'])?$emp_d_detail['designation']:''; ?></strong></th>
		<td style="width:20%;border:none"><strong>Category</strong></td>
		<th style="width:30%;text-align:left;border:none">:&nbsp;<strong><?php echo isset($emp_d[5])?$emp_d[5]:''; ?></strong></th>
	</tr>
	<tr>
		<td style="width:20%;border:none"><strong>Scale</strong></td>
		<th style="width:30%;text-align:left;border:none">:&nbsp;<strong><?php echo isset($emp_d[6])?$emp_d[6]:''; ?></strong></th>
		<td style="width:20%;border:none"><strong>Bank Name</strong></td>
		<th style="width:30%;text-align:left;border:none">:&nbsp;<strong><?php echo isset($emp_d[7])?$emp_d[7]:''; ?></strong></th>
	</tr>
	<tr>
		<td style="width:20%;border:none"><strong>Pay Mode</strong></td>
		<th style="width:30%;text-align:left;border:none">:&nbsp;<strong><?php echo isset($emp_d[8])?$emp_d[8]:''; ?></strong></th>
		<td style="width:20%;border:none"><strong>Gender</strong></td>
		<th style="width:30%;text-align:left;border:none">:&nbsp;<strong><?php echo isset($emp_d_detail['gender'])?$emp_d_detail['gender']:''; ?></strong></th>
	</tr>

	
	<tr>
		<td style="width:20%;border:none"><strong>Address (Perm.)</strong></td>
		<th style="width:30%;text-align:left;border:none">:&nbsp;<strong><?php echo isset($emp_d[9])?$emp_d[9]:''; ?></strong></th>
		<td style="width:20%;border:none"><strong>Shift</strong></td>
		<th style="width:30%;text-align:left;border:none">:&nbsp;<strong><?php echo isset($emp_d[10])?$emp_d[10]:''; ?></strong></th>
	</tr>
	<tr>
		<td style="width:20%;border:none"><strong>Work Location</strong></td>
		<th style="width:30%;text-align:left;border:none">:&nbsp;<strong><?php echo isset($emp_d[11])?$emp_d[11]:''; ?></strong></th>
		<td style="width:20%;border:none"><strong>DOB</strong></td>
		<th style="width:30%;text-align:left;border:none">:&nbsp;<strong><?php echo isset($emp_d_detail['dob'])?$emp_d_detail['dob']:''; ?></strong></th>
	</tr>
	<tr>
		<td style="width:20%;border:none"><strong>E-Mail</strong></td>
		<th style="width:30%;text-align:left;border:none">:&nbsp;<strong><?php echo isset($emp_d_detail['off_mail'])?$emp_d_detail['off_mail']:''; ?></strong></th>
		<td style="width:20%;border:none"><strong>UAN</strong></td>
		<th style="width:30%;text-align:left;border:none">:&nbsp;<strong><?php echo isset($emp_d[12])?$emp_d[12]:''; ?></strong></th>
	</tr>
	<tr>
		<td style="width:20%;border:none"><strong>Address (Corres.)</strong></td>
		<th style="width:30%;text-align:left;border:none">:&nbsp;<strong><?php echo isset($emp_d[13])?$emp_d[13]:''; ?></strong></th>
		<td style="width:20%;border:none"><strong>Aadhar No.</strong></td>
		<th style="width:30%;text-align:left;border:none">:&nbsp;<strong><?php echo isset($emp_d_detail['aadhar_num'])?$emp_d_detail['aadhar_num']:''; ?></strong></th>
	</tr>
</table>
<table style="width:100%">
	<tr>
		<td style="width:20%;border:none"><strong>Month Days</strong></td>
		<th style="width:30%;text-align:left;border:none">:&nbsp;<strong><?php echo isset($emp_d[14])?$emp_d[14]:''; ?></strong></th>
		<td style="width:20%;border:none"><strong>Total Paid Days</strong></td>
		<th style="width:30%;text-align:left;border:none">:&nbsp;<strong><?php echo isset($emp_d[15])?$emp_d[15]:''; ?></strong></th>
	</tr>
	<tr>
		<td style="width:20%;border:none"><strong>Weekly-Off</strong></td>
		<th style="width:30%;text-align:left;border:none">:<strong><?php echo isset($emp_d[16])?$emp_d[16]:''; ?></strong></th>
		<td style="width:20%;border:none"><strong>Days-Off</strong>	</td>
		<th style="width:30%;text-align:left;border:none">:<strong><?php echo isset($emp_d[17])?$emp_d[17]:''; ?></strong></th>
	</tr>
	<tr>
		<td style="width:20%;border:none"><strong>Paid Holidays</strong></td>
		<th style="width:30%;text-align:left;border:none">:&nbsp;<strong><?php echo isset($emp_d[18])?$emp_d[18]:''; ?></strong> </th>
		<td style="width:20%;border:none"><strong>Unpaid Holidays</strong>	</td>
		<th style="width:30%;text-align:left;border:none">:&nbsp;<strong><?php echo isset($emp_d[19])?$emp_d[19]:''; ?></strong></th>
	</tr>
	<tr>
		<td style="width:20%;border:none"><strong>Working Days</strong></td>
		<th style="width:30%;text-align:left;border:none">:&nbsp;<strong><?php echo isset($emp_d[20])?$emp_d[20]:''; ?> </strong></th>
		<td style="width:20%;border:none"><strong>Max Payable Days</strong></td>
		<th style="width:30%;text-align:left;border:none">:&nbsp;<strong><?php echo isset($emp_d[21])?$emp_d[21]:''; ?></strong></th>
	</tr>
	<tr>
		<td style="width:20%;border:none"><strong>LWP</strong></td>
		<th style="width:30%;text-align:left;border:none">:&nbsp;<strong><?php echo isset($emp_d[22])?$emp_d[22]:''; ?></strong> </th>
		<td style="width:20%;border:none"><strong>Net Paid Days</strong></td>
		<th style="width:30%;text-align:left;border:none">:&nbsp;<strong><?php echo isset($emp_d[23])?$emp_d[23]:''; ?></strong></th>
	</tr>
	<tr>
		<td style="width:20%;border:none"><strong>Present Days</strong></td>
		<th style="width:30%;text-align:left;border:none">:&nbsp;<strong><?php echo isset($emp_d[24])?$emp_d[24]:''; ?> </strong></th>
		<td style="width:20%;border:none"><strong>Paid Leaves</strong></td>
		<th style="width:30%;text-align:left;border:none">:&nbsp;<strong><?php echo isset($emp_d[25])?$emp_d[25]:''; ?></strong></th>
	</tr>
	</table>
	<table>
		<tr>
			<th><strong>Earnings</strong></th>
			<th><strong>Amount Rs.</strong></th>
			<th><strong>Deductions</strong></th>
			<th><strong>Amount Rs</strong></th>
		</tr>
		<tr>
			
				<td><strong>BASIC SALARY</strong> </td>
				<th><strong><?php echo isset($emp_d[26])?$emp_d[26]:''; ?> </strong></th>
				<td><strong>PF </strong></td>
				<th><strong><?php echo isset($emp_d[27])?$emp_d[27]:''; ?></strong> </th>
			
		</tr>
		<tr>
			
				<td><strong>HRA</strong> </td>
				<th><strong><?php echo isset($emp_d[28])?$emp_d[28]:''; ?> </strong> </th>
				<td><strong>ESI </strong></strong></td>
				<th><strong><?php echo isset($emp_d[29])?$emp_d[29]:''; ?></strong> </th>
			</tr>
			<tr>
			<td><strong>Special Allowance </strong> </td>
				<th><strong><?php echo isset($emp_d[30])?$emp_d[30]:''; ?> </strong></th>
				<td><strong>TDS</strong> </td>
				<th><strong><?php echo isset($emp_d[31])?$emp_d[31]:''; ?></strong> </th>
			</tr>
			<tr>
			<td><strong>Other Allowance </strong> </td>
				<th><strong><?php echo isset($emp_d[32])?$emp_d[32]:''; ?> </strong> </th>
				<td><strong>ADVANCE</strong> </td>
				<th><strong><?php echo isset($emp_d[33])?$emp_d[33]:''; ?> </strong></th>
			</tr>
			<tr>
				<td><strong>Total Earnings</strong> </td>
				<th><strong><?php echo isset($emp_d[34])?$emp_d[34]:''; ?></strong> </th>
				<td><strong>Total Deductions </strong></td>
				<th><strong><?php echo isset($emp_d[35])?$emp_d[35]:''; ?></strong></th>
			</tr>
			<tr>
				<th colspan="4" style="text-align:left">
				<div>Net Pay	: Rs. <?php echo $total=$emp_d[34]-$emp_d[35]; ?> </div>
				<div>In Words	: Rs. <?php echo $this->livemumtowordclsconvert->mycustom_convert_num(isset($total)?$total:''); ?> </div>
				</th>
			</tr>
			
	</table>
<table style="width:100%">
	<tr>
		<th colspan="10" style="text-align:left">GROSS EARNING</th>
		<th><?php echo isset($emp_d[34])?$emp_d[34]:''; ?> </th>
	</tr>	
</table>

<table style="width:100%">
	<tr>
		<td style="border:none;text-align:left">
			<div style="border:none;text-align:left"><strong>Total CTC	:&nbsp;&nbsp; Rs. <?php echo isset($emp_d[34])?$emp_d[34]:''; ?> </strong></div>			
			<div style="border:none;text-align:left"><strong>In Words	: &nbsp;&nbsp;Rs. <?php echo $this->livemumtowordclsconvert->mycustom_convert_num(isset($emp_d[34])?$emp_d[34]:''); ?></strong>
			</div>
		</td>
	</tr>	
</table>
<table style="width:100%">
	<tr>
		<td style="border:none;text-align:left">
			<div><strong>This is Computer Generated Sheet,Does not require Signature</strong></div>
		</td>
	</tr>
</table>
<!--<table style="width:100%">

	<tr style="height:60px">
		<td style="border:none;text-align:right">
			<div>Authorised Signatory</div>			
			
		</td>
	</tr>
</table>-->
</body>
</html>
