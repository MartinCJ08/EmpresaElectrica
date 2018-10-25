<?php 
	include("conec.php");
$link=Conectarse();

  $nombre=$_POST['nombre'];
  $descripcion=@$_POST['descripcion'];
  $precio=@$_POST['precio'];

  $q = "INSERT INTO `material` (`idMaterial`, `nombre`, `descripcion`, `precio`) VALUES (NULL, '".nombre."', '".descripcion."', '".precio."');";
			
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