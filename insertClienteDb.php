<?php

include("conec.php");
include("checksession.php");
   $link=Conectarse();

$id=$_POST["idc"]   ;
$nom=$_POST["nombre"];
$ap=$_POST["a_p"];
$am=$_POST["a_m"];
$dire=$_POST["dir"];
$cel=$_POST["cel"];
$email=$_POST["email"];
$idu=$_POST["idu"];

//diseñar la consulta
$q="call agregar_cliente('".$nom."','".$ap."','".$am."','".$dire."','".$cel."','".$email."',".$idu.");" ;
			
echo"valor de la variable q= ".$q;
echo "<br>";
	  
	
	setAutocommitOff($link);
  $mysqlqi = mysqli_query($link,$q);
   
   echo "valor de la variable funcion mysql_query: " .$mysqlqi;
   
   if ($mysqlqi==1) {
	   
	   echo " query realizado correctamente";   
   }
   else {
	   
	   echo " query sin realizar  verificar query";
	   mysqli_rollback($link);
	   }
	setAutocommitOn($link);
		closeConnection($link);
   
  header("Location: clienteAdmon.php");

?>