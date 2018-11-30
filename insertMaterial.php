<!DOCTYPE html>
<html>
<head>
	<title></title>
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
<h1>Insertar Material a la base de datos</h1>

<form action="insertMaterialDb.php" method="post">
<table>
<!--<tr bgcolor="99ff66">
   <td>idMaterial:</td>
   <td><input type="text" name="idc" size="20" maxlength="30"></td>
</tr>  -->  
<tr>
   <td>Descripción:</td>
   <td><input type="text" name="descripcion" size="20" maxlength="300"></td>
</tr>
<tr>
   <td>Codigo:</td>
   <td><input type="text" name="codigo" size="20" maxlength="30"></td>
</tr>
<tr>
   <td>Precio:</td>
   <td><input type="text" name="precio" size="20" maxlength="30"></td>
</tr>
<tr>
   <td>Unidad:</td>
   <td><select name ="UnidadMaterial_idUnidadMaterial"><option value="1">PIEZA</option>
		<option value="2">Ml</option> </select></td>
</tr>
</table>
<input type="submit" name="accion" value="Grabar">

<a class="buttonSha" href="materialAdmon.php">Regresar</a>
</FORM>
<hr>





<?php
   include("conec.php");
   $link=Conectarse();
   $query="select * from material";
   
   $result=mysqli_query($link,$query);
?> 
<center>
 <table>
     <tr>
         <td >&nbsp;idMaterial</td>
         <td>&nbsp;descripcion&nbsp;</td>
         <td>&nbsp;codigo&nbsp;</td>
         <td>&nbsp;precio&nbsp;</td>
         <td>&nbsp;unidad&nbsp;</td>
      </tr>
<?php
   while($row = mysqli_fetch_array($result)) {
	   
		$uni = "select * from unidadmaterial where idUnidadMaterial =".$row['UnidadMaterial_idUnidadMaterial'].";";
		#echo $uni ;
		$query_uni = mysqli_query( $link, $uni)
        or die ( "Algo ha ido mal en la consulta a material en la base de datos");
		$rowdos = mysqli_fetch_array($query_uni);
		
		
		echo "<tr><td>".$row["idMaterial"]."</td>";
		echo "<td >".$row["descripcion"]."</td>";
		echo "<td>".$row["codigo"]."</td>";
		echo "<td>".$row["precio"]."</td>";
		echo "<td>".$rowdos['unidad']."</td>";
		#echo "<td>".$row["UnidadMaterial_idUnidadMaterial"]."</td>";
   }
   mysqli_free_result($result);
?>
 </table> </center>

</div>
</body>
</html>