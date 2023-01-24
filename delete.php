<?php
session_start();
if(!isset($_SESSION["email"]))
{
	echo ("<SCRIPT LANGUAGE='JavaScript'>
    window.alert('Please log in first');
    window.location.href='alogin.html';
    </SCRIPT>");
}
//including the database connection file
include("process/dbh.php");

//getting id of the data from url
$id = $_GET['id'];

//deleting the row from table
$result = mysqli_query($conn, "DELETE FROM employee WHERE id=$id");

//redirecting to the display page (index.php in our case)
header("Location:viewemp.php");
?>

