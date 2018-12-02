<?php
session_start();

if(!$_SESSION){
	echo "Login fallido";
	session_unset();
	session_destroy();
	header("location:login.php");
}else{
	
}

?>