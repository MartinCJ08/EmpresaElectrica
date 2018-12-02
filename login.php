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
    return $conexion;
}
		  
   session_start();
   $link=Conectarse();
   $error = "";
   
   if($_SERVER["REQUEST_METHOD"] == "POST") {
      // username and password sent from form 
      
      $myemail = mysqli_real_escape_string($link,$_POST['email']);
      $mypassword = mysqli_real_escape_string($link,$_POST['password']); 
      
      $sql = "SELECT idUsuario FROM usuario WHERE correo= '$myemail' and pass= '$mypassword'";
      $result = mysqli_query($link,$sql);
	  
      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
	  if (!$row) {
		printf("Error: %s\n", mysqli_error($link));
		exit();
		}
	  
      #$active = $row['active'];
      
      $count = mysqli_num_rows($result);
	  
      
      // If result matched $myusername and $mypassword, table row must be 1 row
		
      if($count == 1) {
         $_SESSION['myemail'] = $myemail;         
         header("location: indexAdmin.php");
      }else {
         $error = "Tu correo o contraseña son incorrectos";
      }
   }
?>
<html>
   
   <head>
      <title>Iniciar sesión</title>
      
      <style type = "text/css">
         body {
            font-family:Arial, Helvetica, sans-serif;
            font-size:14px;
         }
         label {
            font-weight:bold;
            width:100px;
            font-size:14px;
         }
         .box {
            border:#666666 solid 1px;
         }
      </style>
      
   </head>
   
   <body bgcolor = "#FFFFFF">
	
      <div align = "center">
         <div style = "width:300px; border: solid 1px #333333; " align = "left">
            <div style = "background-color:#333333; color:#FFFFFF; padding:3px;"><b>Login</b></div>
				
            <div style = "margin:30px">
               
               <form action = "" method = "post">
                  <label>Correo    :</label><input type = "text" name = "email" class = "box"/><br /><br />
                  <label>Contraseña:</label><input type = "password" name = "password" class = "box" /><br/><br />
                  <input type = "submit" value = " Submit "/><br />
               </form>
			   <?php
				echo $error;
			   ?>
				 <div style = "font-size:11px; color:#cc0000; margin-top:10px"></div>
            </div>
				
         </div>
			
      </div>

   </body>
</html>