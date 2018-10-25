<?php 
	include("conec.php");
	$link=Conectarse();

	$descripcion=$_POST['descripcion'];
	$foto=@$_POST['foto'];
	$caracteristicas=@$_POST['caracteristicas'];

	$q ="INSERT INTO `equipo` (`idEquipo`, `descripcion`, `foto`, `caracteristicas`) VALUES (NULL, '".descripcion."', '".foto."', '".caracteristicas."')";
			
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