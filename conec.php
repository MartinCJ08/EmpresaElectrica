<?php

function Conectarse(){
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
    echo "Se conecto";
    return $conexion;
}

function conect($sql){

    $servername = "localhost";
    $database = "electricabd";
    $username = "root";
    $password = "";
    // Create connection
    $conn = mysqli_connect($servername, $username, $password, $database);
    // Check connection
    if (!$conn) {
          die("Connection failed: " . mysqli_connect_error());
    }
     
    echo "Connected successfully";
     
    $s = $sql;
    if (mysqli_query($conn, $s)) {
          echo "New record created successfully";
    } else {
          echo "Error: " . $s . "<br>" . mysqli_error($conn);
    }
    mysqli_close($conn);
 
}

?>