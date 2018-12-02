<?php
include("conec.php");
$link=Conectarse();

$tbl_name="usuario"; // Table name 

// username and password sent from form 
$myemail=$_POST['myemail']; 
$mypassword=$_POST['mypassword']; 

// To protect MySQL injection (more detail about MySQL injection)
$myemail = stripslashes($myemail);
$mypassword = stripslashes($mypassword);
$myemail = mysqli_real_escape_string($link,$myemail);
$mypassword = mysqli_real_escape_string($link,$mypassword);

$sql="SELECT * FROM $tbl_name WHERE correo='$myemail' and pass='$mypassword'";
$result=mysqli_query($link,$sql);

// Mysql_num_row is counting table row
$count=mysqli_num_rows($result);

// If result matched $myusername and $mypassword, table row must be 1 row

if($count==1){

// Register $myusername, $mypassword and redirect to file "login_success.php"
$_SESSION["myemail"] = $myemail;
$_SESSION["mypassword"] = $mypassword;
header("location:login_success.php");
}
else {
echo "Email o contraseña incorrectos";
}