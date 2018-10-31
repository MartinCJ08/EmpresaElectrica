<?php 

include("conec.php");
$link=Conectarse();
/*
  if (isset($_POST["nombre"])) {
    $nom=$_POST["nombre"];
  }else{
    $nom = "Monchiro";
  }*/

  $correo=@$_POST['correo'];
  $pass=@$_POST['pass'];
  
  /*$am=@$_POST['ape_mat'];
  $correo=@$_POST['correo'];
  $pass=@$_POST['psw'];
  $pass_r=@$_POST['psw-repeat'];
  $cel=@$_POST['cel'];
  $ruta=@$_POST['ruta_doc'];*/
  
  $q = "INSERT INTO `usuario` (`idUsuario`, `correo`, `pass`, `TipoUsuario_idTipoUsuario`) VALUES (NULL, '".$correo."', '".$pass."', '2');";
			
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
  mysqli_close($link);

 ?>