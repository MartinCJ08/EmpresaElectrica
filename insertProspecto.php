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
  

  $yakelino = $_FILES["archivo"];
  echo "valor de la variable yakelino= ".$yakelino;

if($_FILES["archivo"]["error"]>0){
    echo "Error al cargar archivo"; 
    } else {
    
    $permitidos = array("application/pdf");
    $limite_kb = 100000000;
    
    if(in_array($_FILES["archivo"]["type"], $permitidos) && $_FILES["archivo"]["size"] <= $limite_kb * 1024){
      
      $ruta = 'files/'.$id_insert.'/';
      $archivo = $ruta.$_FILES["archivo"]["name"];
      
      if(!file_exists($ruta)){
        mkdir($ruta);
      }
      
      if(!file_exists($archivo)){
        
        $resultado = @move_uploaded_file($_FILES["archivo"]["tmp_name"], $archivo);
        
        if($resultado){
          echo "Archivo Guardado";
          } else {
          echo "Error al guardar archivo";
        }
        
        } else {
        echo "Archivo ya existe";
      }
      
      } else {
      echo "Archivo no permitido o excede el tamaño";
    }
}

mysqli_close($link);

#  header("Location: index.php");
?>