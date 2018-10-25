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
  $correo=@$_POST['correo'];
  $pass=@$_POST['psw'];
  $pass_r=@$_POST['psw-repeat'];
  $cel=@$_POST['cel'];
  $ruta=@$_POST['ruta_doc'];
  
  $q = "INSERT INTO `prospecto` (`id`, `nombre`, `ape_pat`, `ape_mat`, `cel`, `correo`, `ruta_doc`) VALUES (NULL, '".$nom."', '".$ap."', '".$am."', '".$cel."', '".$correo."', '".$ruta."');";
			
  echo "valor de la variable q= ".$q;
  echo "<br>";
	  
  $mysqlqi = mysqli_query($link,$q);
   
  echo "valor de la variable funcion mysql_query: " .$mysqlqi;
   
  if ($mysqlqi==1) {
    echo " query realizado correctamente";   
  }
  else {
	 echo " query sin realizar  verificar query";
	}

  header("Location: index.php");
?>