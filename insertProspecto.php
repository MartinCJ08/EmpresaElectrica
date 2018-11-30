<?php

include("conec.php");
$link=Conectarse();
/*
  if (isset($_POST["nombre"])) {
    $nom=$_POST["nombre"];
  }else{
    $nom = "Monchiro";
  }*/

  $nom=$_POST['nombre'];
  $ap=@$_POST['ape_pat'];
  $am=@$_POST['ape_mat'];
  $cel=@$_POST['cel'];
  $correo=@$_POST['correo'];
  

  $q = "call electricdb.agregar_prospecto('".$nom."', '".$ap."', '".$am."', '".$cel."', '".$correo."');";
  $id_insert = $correo;
			
  echo "valor de la variable q= ".$q;
  echo "valor de la variable id_insert= ".$id_insert;
  echo "<br>";
	  
  $mysqlqi = mysqli_query($link,$q);
   
  echo "valor de la variable funcion mysql_query: " .$mysqlqi;
   
  if ($mysqlqi==1) {
    echo " query realizado correctamente";   
  }
  else {
	 echo " query sin realizar  verificar query";
	}
  /*
  $carpeta = "files/";
  opendir($carpeta);
  $destino = $carpeta.$_FILES['archivo']['name'];
  copy($_FILES['archivo']['tmp_name'],$destino);
  echo "Archivo subido exitosamente";
*/

mysqli_close($link);

header("Location: index.php");
?>