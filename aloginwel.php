<?php 
session_start();
if(!isset($_SESSION["email"]))
{
	echo ("<SCRIPT LANGUAGE='JavaScript'>
    window.alert('Please log in first');
    window.location.href='alogin.html';
    </SCRIPT>");
}
require_once ('process/dbh.php');
$sql = "SELECT id, firstName, lastName,  points FROM employee, rank WHERE rank.eid = employee.id order by rank.points desc";
$result = mysqli_query($conn, $sql);
?>


<html>
<head>
	<title>Admin Panel | XYZ Corporation</title>
	<link rel="stylesheet" type="text/css" href="stleadmin.css">
</head>
<body>
	
	<header>
		<nav>
			<h1>XYZ Corp.</h1>
			<ul id="navli">
				<li><a class="homered" href="aloginwel.php">HOME</a></li>
				<li><a class="homeblack" href="addemp.php">Add Employee</a></li>
				<li><a class="homeblack" href="viewemp.php">View Employee</a></li>
				<li><a class="homeblack" href="assign.php">Assign Project</a></li>
				<li><a class="homeblack" href="assignproject.php">Project Status</a></li>
				<li><a class="homeblack" href="salaryemp.php">Salary Table</a></li>
				<li><a class="homeblack" href="empleave.php">Employee Leave</a></li>
				<li><a class="homeblack" href="logout.php">Log Out</a></li>
			</ul>
		</nav>
	</header>
	 
	<div id="divimg">
		<h2 style="font-family: 'Montserrat', sans-serif; font-size: 25px; text-align: center; color:white;">Empolyee Leaderboard </h2>
    	<table>

			<tr >
				<th align = "center">Seq.</th>
				<th align = "center">Emp. ID</th>
				<th align = "center">Name</th>
				<th align = "center">Points</th>
				

			</tr>

			

			<?php
				$seq = 1;
				while ($employee = mysqli_fetch_assoc($result)) {
					echo "<tr>";
					echo "<td>".$seq."</td>";
					echo "<td>".$employee['id']."</td>";
					
					echo "<td>".$employee['firstName']." ".$employee['lastName']."</td>";
					
					echo "<td>".$employee['points']."</td>";
					
					$seq+=1;
				}


			?>

		</table>

		
	</div>
</body>
</html>