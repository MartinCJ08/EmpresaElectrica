<?php

function Conectarse(){
    // Datos de la base de datos
	$usuario = "";
	$password = "";
	$servidor = "localhost";
	$basededatos = "electricabd";
	// creación de la conexión a la base de datos con mysql_connect()
	$conexion = mysqli_connect( $servidor, $usuario, "" ) or die ("No se ha podido conectar al servidor de Base de datos");
	// Selección del a base de datos a utilizar
	$db = mysqli_select_db( $conexion, $basededatos ) 
          or die ( "Upps! Pues va a ser que no se ha podido conectar a la base de datos" );
    return $conexion;
}

function conect($server,$database,$username,$password,$sql){

    $s = "mysql.hostinger.co.uk";
    $data = "u266072517_name";
    $username = "u266072517_user";
    $password = "buystuffpwd";
    // Create connection
    $conn = mysqli_connect($servername, $username, $password, $database);
    // Check connection
    if (!$conn) {
          die("Connection failed: " . mysqli_connect_error());
    }
     
    echo "Connected successfully";
     
    $sql = "INSERT INTO Students (name, lastname, email) VALUES ('Thom', 'Vial', 'thom.v@some.com')";
    if (mysqli_query($conn, $sql)) {
          echo "New record created successfully";
    } else {
          echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
    mysqli_close($conn);
 
}

?>