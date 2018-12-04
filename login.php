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
   if ($_SESSION!=null) {
	header("location: indexAdmin.php");
}

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
		
		#printf("Error: %s\n", mysqli_error($link));
		#printf("Login fallido");
		#header("location: login.php");
		
		}
	  
      #$active = $row['active'];
      
      $count = mysqli_num_rows($result);
	  
      
      // If result matched $myusername and $mypassword, table row must be 1 row
		
      if($count == 1) {
        $_SESSION['myemail'] = $myemail; 
		$sqlbit = "call electricdb.agregar_bit_usuario('Login a pagina administrativa','".$myemail."','Login correcto');";
		$mysqlin = mysqli_query($link,$sqlbit);
		echo"valor de la variable sqlbit= ".$sqlbit;
		
         header("location: indexAdmin.php");
      }else {
		  $sqlbit = "call electricdb.agregar_bit_usuario('Login a pagina administrativa','".$myemail."','Error, mas de una columna');";

		  $mysqlin = mysqli_query($link,$sqlbit);
		  $error = "Tu correo o contraseña son incorrectos";
		  echo"valor de la variable sqlbit= ".$sqlbit;
		 
      }
   }
?>
<html>
   
   <head>
      <title>Iniciar sesión</title>
      
<link rel="stylesheet" type="text/css" href="css/page_style.css">
      
   </head>
   
   <body bgcolor = "#FFFFFF">
	<br><br><br>
      <div align = "center">
         <div style = "width:300px; border: solid 1px #333333; " align = "left">
            <div style = "background-color:#333333; color:#FFFFFF; padding:3px;"><b>Login</b></div>
				
            <div style = "margin:30px">
               
               <form action = "" method = "post" class="container">
                  <label>Correo    :</label><input type = "text" name = "email" class = "box"/><br /><br />
                  <label>Contraseña:</label><input type = "password" name = "password" class = "box" /><br/><br />
                  <input type = "submit" value = " Enviar "/><br />
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