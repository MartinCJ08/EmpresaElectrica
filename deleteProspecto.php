<html>
<head>
   <title>Borrar un prospecto</title>
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
<h1>Borrar un prospecto</h1>
<?php
   include("conec.php");
   $link=Conectarse();
   $query="select * from prospecto";
   $result=mysqli_query($link,$query);
?>
    <table>
      <tr>
         <td>&nbsp;idProspecto</td>
         <td>&nbsp;Nombre&nbsp;</td>
         <td>&nbsp;Apellido paterno&nbsp;</td>
         <td>&nbsp;apellido materno&nbsp;</td>
         <td>&nbsp;Celular&nbsp;</td>
         <td>&nbsp;Correo&nbsp;</td>
       </tr>
       
<?php
  
  while($row = mysqli_fetch_array($result)) {
      echo "<tr><td> "
      . "<a href=\"deleteProspectoDb.php?idc=".$row["idProspecto"]."\"> ".$row["idProspecto"]  ."</td>";
      echo " <td> ".$row["nombre"]  . "</td>";
      echo " <td> ".$row["ape_pat"]  . "</td>";
      echo " <td> ".$row["ape_mat"]  . "</td>";
      echo "<td>".$row["cel"]."</td>";
      echo "<td>".$row["correo"]."</td>";
      echo "</tr>";
  } 
  mysqli_free_result($result);
?>
</table>
<br><br>
<a class="buttonSha" href="prospectoAdmon.php">Regresar</a>
</div>
</body>
</html>