<?php

include("conec.php");
$link=Conectarse();
   
$idCotizacion = $_POST["idCot"];
$idMaterial=$_POST["id"];
$cantidad=$_POST["cant"];


echo "id cot: ".$idCotizacion."<br> idMaterial:".$idMaterial."<br>Cantidad:".$cantidad;
//diseñar la consulta

$q="call agregar_cotizacion_material(".$idCotizacion.",".$idMaterial.",".$cantidad.");";			
echo"<br>valor de la variable q= ".$q;
echo "<br>";
	  
  $mysqlqi = mysqli_query($link,$q);
   echo "valor de la variable funcion mysql_query: " .$mysqlqi;
   
   if ($mysqlqi==1) {
	   
	   echo " query realizado correctamente en insertCotizacionMaterialDb";   	
   }
   else {
	   
	   echo "<br> query sin realizar  verificar query en insertCotizacionMaterialDb";
	   }
   
  header("Location: insertCotizacion.php?id=".$idCotizacion);

?>