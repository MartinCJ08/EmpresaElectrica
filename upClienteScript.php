<?php

include("conec.php");
$link=Conectarse();

$idc=$_POST["id"];
$nom=$_POST["nom"];
$ap=$_POST["ap"];
$am=$_POST["am"];
$direccion=$_POST["direccion"];
$cel=$_POST["cel"];
$correo=$_POST["correo"];
$idu=$_POST["idu"];

$Sql = "call electricdb.modificar_cliente(".$idc.", '".$nom."', '".$ap."', '".$am."', '".$direccion."', '".$cel."', '".$correo."', ".$idu.");";


setAutocommitOff($link);
   $result=mysqli_query($link,$Sql);
   
   if ($result==1) {
	   echo " Registro actualizado correctamente..";
	   header("Location: clienteAdmon.php");
	   	   }
		else {
			
			echo " funcion fallida checar sintaxis y/o conexion servidor";
			mysqli_rollback($link);
			}   
			
	setAutocommitOn($link);
	closeConnection($link);



   
?>
