<?php

include("conec.php");
$link=Conectarse();

$id=$_POST["id"];
$nom=$_POST["nom"];
$ap=$_POST["ap"];
$am=$_POST["am"];
$tel=$_POST["tel"];
$direccion=$_POST["dir"];
$correo=$_POST["email"];
$rfc=$_POST["rfc"];
$idu=$_POST["idu"];

$Sql = "call electricdb.modificar_empleado(".$id.", '".$nom."', '".$ap."', '".$am."', '".$tel."', '".$direccion."', '".$correo."', '".$rfc."', ".$idu.");";

$resultado=mysqli_query($link,$Sql);
  
echo "<br> valor del funcion query ". $resultado."<br>";

if ($resultado==1) {
	   echo " registro actualizado exitosamente..";
}else {
	echo " funcion fallida checar sintaxis y/o conexion servidor";
}   

header("Location: empleadoAdmon.php");
   
?>