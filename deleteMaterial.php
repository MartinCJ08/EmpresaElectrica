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
  <li><a href="trabajoAdmon.php">Trabajos</a></li>
  <li><a href="materialAdmon.php">Material</a></li>
  <li><a href="equipoAdmon.php">Equipo</a></li>
  <li><a href="prospectoAdmon.php">Prospecto</a></li>
</ul>

<div style="padding:20px;margin-top:30px;height:1500px;">
<h1>Borrar material de la base de datos</h1>
<?php
   include("conec.php");
   $link=Conectarse();
   $query="select * from material";
   $result=mysqli_query($link,$query);
?>
    <table>
      <tr>
         <td>&nbsp;idMaterial</td>
         <td>&nbsp;descripcion&nbsp;</td>
         <td>&nbsp;codigo&nbsp;</td>
         <td>&nbsp;precio&nbsp;</td>
         <td>&nbsp;UnidadMaterial_idUnidadMaterial&nbsp;</td>
       </tr>
       
<?php
  
  while($row = mysqli_fetch_array($result)) {
      echo "<tr><td> "
      . "<a href=\"deleteMaterialDb.php?idc=".$row["idMaterial"]."\"> ".$row["idMaterial"]  ."</td>";
      echo " <td> ".$row["descripcion"]  . "</td>";
      echo " <td> ".$row["codigo"]  . "</td>";
      echo " <td> ".$row["precio"]  . "</td>";
      echo "<td>".$row["UnidadMaterial_idUnidadMaterial"]."</td>";
      echo "</tr>";
  } 
  mysqli_free_result($result);
?>
</table>
<br><br>
<a class="buttonSha" href="materialAdmon.php">Regresar</a>
</div>
</body>
</html>