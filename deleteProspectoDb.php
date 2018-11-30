<?php
   include("conec.php");
   $link=Conectarse();
  
   echo "borrando el registro:<br> ";
      
   $var_id=$_GET["idc"];
  echo " valor de la variable enviada idc: ".$var_id;
  $query="call electricdb.eliminar_prospecto(".$var_id.");";
  
  echo "<br>". $query;
  echo "<br>";
  
  
   $resultado=mysqli_query($link,$query);
   
   echo "<br> valor de funcion mysql_query ". $resultado."<br>";
   
   if ($resultado==1) {
	   echo " registro borrado exitosamente..";
	   	   }
		else {
			
			echo " funcion fallida checar sintaxis y/o conexion servidor";
			}   

  header("Location: deleteProspecto.php");
?>