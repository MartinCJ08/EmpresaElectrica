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
  <li><a href="cotizacionAdmon.php">Cotizaciones</a></li>
  <li><a href="materialAdmon.php">Material</a></li>
  <li><a href="prospectoAdmon.php">Prospecto</a></li>
</ul>

<div style="padding:20px;margin-top:30px;height:1500px;">
<h1>Ejemplo de Borrardo en bases de datos con PHP y MySQL</h1>
<?php
	include("checksession.php");
   include("conec.php");
   $link=Conectarse();
   $query="select * from cliente";
   $result=mysqli_query($link,$query);
?>
    <table>
      <tr>
         <td>&nbsp;Idcliente</td>
         <td>&nbsp;nombre&nbsp;</td>
         <td>&nbsp;Apellido paterno&nbsp;</td>
         <td>&nbsp;apellido materno&nbsp;</td>
         <td>&nbsp;Dirección&nbsp;</td>
         <td>&nbsp;Celular&nbsp;</td>
         <td>&nbsp;Correo&nbsp;</td>
         <td>&nbsp;Usuario_idUsuario&nbsp;</td> 
       </tr>
       
<?php
  
  while($row = mysqli_fetch_array($result)) {
      echo "<tr><td> "
      . "<a href=\"deleteClienteDb.php?idc= ".$row["idCliente"]."\"> ".$row["idCliente"]  ."</td>";
      echo " <td> ".$row["nombre"]  . "</td>";
      echo " <td> ".$row["ape_pat"]  . "</td>";
      echo " <td> ".$row["ape_mat"]  . "</td>";
      echo "<td>".$row["direccion"]."</td>";
      echo "<td>".$row["cel"]."</td>";
      echo "<td>".$row["correo"]."</td>";
      echo "<td>".$row["Usuario_idUsuario"]."</td>";
      echo "</tr>";
  } 
  mysqli_free_result($result);
?>
</table>
<br><br>
<a class="buttonSha" href="clienteAdmon.php">Regresar</a>
</div>
</body>
</html>