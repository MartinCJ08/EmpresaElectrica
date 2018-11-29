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

$resultado=mysqli_query($link,$Sql);
  
echo "<br> valor del funcion query ". $resultado."<br>";

if ($resultado==1) {
	   echo " registro actualizado exitosamente..";
}else {
	echo " funcion fallida checar sintaxis y/o conexion servidor";
}   

header("Location: clienteAdmon.php");

   
?>
