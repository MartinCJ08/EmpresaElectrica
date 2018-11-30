<!DOCTYPE html>
<html>
<head>
	<title>Prueba</title>
</head>
<body>
<?php 
  function mostrarTodoCliente(){
    echo "PHP PUTOSS!!!!";
  }

 ?>

<h1>Pureba</h1>

<input type="submit" name="" onclick="todoCliente()">

<p id="demo"></p>


<script>
  function todoCliente(){
    //alert("Si se armo compa");
    document.getElementById("demo").innerHTML = "Hello World";
    document.write('<?php echo mostrarTodoCliente(); ?>');
  }
</script>
</body>
</html>