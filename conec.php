<?php

function Conectarse(){
	include("checksession.php");
    // Datos de la base de datos
	$usuario = "root";//midifique estaba vacio, dio error 6-12
	$password = "";
	$servidor = "localhost";
	$basededatos = "electricdb";
	// creación de la conexión a la base de datos con mysql_connect()
	$conexion = mysqli_connect( $servidor, $usuario, "" ) or die ("No se ha podido conectar al servidor de Base de datos");
	// Selección del a base de datos a utilizar
	$db = mysqli_select_db( $conexion, $basededatos ) 
          or die ( "Upps! Pues va a ser que no se ha podido conectar a la base de datos" );
		  

	/* checking connection status */
	if ($conexion->connect_error) {
	die("Connection failed: " . $conexion->connect_error);
	
	}
	#echo "Connected to database successfully. <br>";
	
    return $conexion;
	
}

function checkAutocommit($con){
/* SELECT autocommit current state */
	if ($result = mysqli_query($con, "SELECT @@autocommit")) {
		$row = mysqli_fetch_row($result);
		echo "Autocommit current state is : ". $row[0];
		return mysqli_free_result($result);
	}
}

function setAutocommitOff($con){
/* turn autocommit off */
	mysqli_autocommit($con, FALSE);
	
	if ($result = mysqli_query($con, "SELECT @@autocommit")) {
		$row = mysqli_fetch_row($result);
		echo "<br>Autocommit is set to FALSE now : ". $row[0];
		mysqli_free_result($result);
	}
}

function setAutocommitOn($con){
/* turn autocommit on */
	mysqli_autocommit($con, TRUE);
	if ($result = mysqli_query($con, "SELECT @@autocommit")) {
		$row = mysqli_fetch_row($result);
		echo "<br>Autocommit is set to TRUE again : ". $row[0];
		mysqli_free_result($result);
	}
}

function closeConnection($con){
	$con->close();
}
 




?>