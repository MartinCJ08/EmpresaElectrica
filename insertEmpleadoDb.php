<?php

include("conec.php");
$link=Conectarse();

$nom=$_POST["nombre"];
$ap=$_POST["a_p"];
$am=$_POST["a_m"];
$dire=$_POST["dire"];
$tel=$_POST["tel"];
$email=$_POST["email"];
$rfc=$_POST["rfc"];
$idu=$_POST["idu"];

//diseñar la consulta
$q="call electricdb.agregar_empleado('".$nom."', '".$ap."', '".$am."', '".$tel."', '".$dire."', '".$email."', '".$rfc."', ".$idu.");" ;
			
echo"valor de la variable q= ".$q;
echo "<br>";
	  
  $mysqlqi = mysqli_query($link,$q);
   
   echo "valor de la variable funcion mysql_query: " .$mysqlqi;
   
   if ($mysqlqi==1) {
	   
	   echo " query realizado correctamente";   
   }
   else {
	   
	   echo " query sin realizar  verificar query";
	   }
   
  header("Location: empleadoAdmon.php");

?>