<?php

include("conec.php");
   $link=Conectarse();

$id=$_POST["idMaterial"]   ;
$desc=$_POST["descripcion"];
$cod=$_POST["codigo"];
$prec=$_POST["precio"];
$unmat=$_POST["UnidadMaterial_idUnidadMaterial"];

//diseñar la consulta
$q="call agregar_material('".$desc."','".$cod."',".$prec.",".$unmat.");" ;
			
echo"valor de la variable q= ".$q;
echo "<br>";
	  
  $mysqlqi = mysqli_query($link,$q);
   
   echo "valor de la variable funcion mysql_query: " .$mysqlqi;
   
   if ($mysqlqi==1) {
	   
	   echo " query realizado correctamente en insertMaterialDb";   	
   }
   else {
	   
	   echo " query sin realizar  verificar query en insertMaterialDb";
	   }
   
  header("Location: materialAdmon.php");

?>