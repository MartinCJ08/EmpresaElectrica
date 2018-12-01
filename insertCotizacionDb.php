<?php

include("conec.php");
   $link=Conectarse();

   

$conc=$_POST["concepto"]   ;
$dist=$_POST["distancia"];
$tiem=$_POST["t_s"];
$tipo=$_POST["t_p"];
$clien=$_POST["cliente"];


//diseñar la consulta
$q="call agregar_cotizacion('".$conc."',".$dist.",".$tiem.",".$tipo.",".$clien.");" ;
$q_id = "select electricdb.ultima_cotizacion()";

echo "Ultima cotizacion: ".$q_id;
echo "<br>";
echo"valor de la variable q= ".$q;
echo "<br>";
	  
$mysqlqi = mysqli_query($link,$q);

   
   echo "valor de la variable funcion mysql_query: " .$mysqlqi;
   
   if ($mysqlqi==1) {
	   
	   echo " Cotizacion agregada correctamente";   	
   }
   else {
	   
	   echo " query sin realizar, verificar insertCotizacionDb.php";
	   }
	   
	   
$id_query = mysqli_query($link, $q_id);
   
   if ($id_query==1) {
	   
	   echo " Id obtenido correctamente";   	
   }
   else {
	   
	   echo " query sin realizar, verificar insertCotizacionDb.php";
	   }
	
$row = mysqli_fetch_array($id_query);


header("Location: insertCotizacion.php?id=".$row["electricdb.ultima_cotizacion()"]);

?>