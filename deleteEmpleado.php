<html>
<head>
   <title>Ejemplo de PHP</title>
   <meta charset="utf-8">
   <link rel="stylesheet" type="text/css" href="css/page_style.css">
</head>
<body>
<ul>
  <li><a class="active" href="index.php">Principal</a></li>
  <li><a href="clienteAdmon.php">Clientes</a></li>
  <li><a href="empleadoAdmon.php">Empleados</a></li>
  <li><a href="#cotizacionAdmon.php">Cotizaciones</a></li>
  <li><a href="#trabajoAdmon.php">Trabajos</a></li>
  <li><a href="#materialAdmon.php">Material</a></li>
  <li><a href="#equipoAdmon.php">Equipo</a></li>
  <li><a href="#prospectoAdmon.php">Prospecto</a></li>
</ul>

<div style="padding:20px;margin-top:30px;height:1500px;">
<h1>Ejemplo de Borrardo en bases de datos con PHP y MySQL</h1>
<?php
   include("conec.php");
   $link=Conectarse();
   $query="select * from empleado";
   $result=mysqli_query($link,$query);
?>
    <table>
      <tr>
         <td>&nbsp;idEmpleado</td>
         <td>&nbsp;nombre&nbsp;</td>
         <td>&nbsp;Apellido paterno&nbsp;</td>
         <td>&nbsp;apellido materno&nbsp;</td>
         <td>&nbsp;Teléfono&nbsp;</td>
         <td>&nbsp;Dirección&nbsp;</td>
         <td>&nbsp;Email&nbsp;</td>
         <td>&nbsp;RFC&nbsp;</td>
         <td>&nbsp;Usuario_idUsuario&nbsp;</td> 
       </tr>
       
<?php
  
  while($row = mysqli_fetch_array($result)) {
      echo "<tr><td> "
      . "<a href=\"deleteEmpleadoDb.php?idc= ".$row["idEmpleado"]."\"> ".$row["idEmpleado"]  ."</td>";
      echo " <td> ".$row["nombre"]  . "</td>";
      echo " <td> ".$row["ape-pat"]  . "</td>";
      echo " <td> ".$row["ape-mat"]  . "</td>";
      echo "<td>".$row["telefono"]."</td>";
      echo "<td>".$row["direccion"]."</td>";
      echo "<td>".$row["email"]."</td>";
      echo "<td>".$row["rfc"]."</td>";
      echo "<td>".$row["Usuario_idUsuario"]."</td>";
      echo "</tr>";
  } 
  mysqli_free_result($result);
?>
</table>
<br><br>
<a class="buttonSha" href="empleadoAdmon.php">Regresar</a>
</div>
</body>
</html>