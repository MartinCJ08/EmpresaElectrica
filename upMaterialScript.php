<?php

include("conec.php");
$link=Conectarse();

$idMaterial=$_POST["id"];
$desc=$_POST["desc"];
$codigo=$_POST["cod"];
$precio=$_POST["prec"];
$unimat=$_POST["unmat"];


$Sql = "call electricdb.modificar_material(".$idMaterial.", '".$desc."', '".$codigo."', ".$precio.", ".$unimat.");";
#echo "query ".$Sql;
$resultado=mysqli_query($link,$Sql);
  
echo "<br> valor del funcion query ". $resultado."<br>";

if ($resultado==1) {
	   echo " registro actualizado exitosamente..";
}else {
	echo " funcion fallida checar sintaxis y/o conexion servidor";
}   

header("Location: materialAdmon.php");

   
?>
