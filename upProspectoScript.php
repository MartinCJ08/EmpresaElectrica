<?php

include("conec.php");
$link=Conectarse();

$idc=$_POST["id"];
$nom=$_POST["nom"];
$ap=$_POST["ap"];
$am=$_POST["am"];
$cel=$_POST["cel"];
$correo=$_POST["correo"];


$Sql = "call electricdb.modificar_prospecto(".$idc.", '".$nom."', '".$ap."', '".$am."', '".$cel."', '".$correo."');";

$resultado=mysqli_query($link,$Sql);
  
echo "<br> valor del funcion query ". $resultado."<br>";

if ($resultado==1) {
	   echo " registro actualizado exitosamente..";
}else {
	echo " funcion fallida checar sintaxis y/o conexion servidor";
}   

header("Location: prospectoAdmon.php");

   
?>
