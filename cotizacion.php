<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/row_style.css">
<style>
* {
    box-sizing: border-box;
}

input[type=text], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
}

label {
    padding: 12px 12px 12px 0;
    display: inline-block;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    float: right;
}

input[type=submit]:hover {
    background-color: #45a049;
}

.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}



/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
    .col-25, .col-75, input[type=submit] {
        width: 100%;
        margin-top: 0;
    }
}
</style>
</head>
<body>
<center>
<h2>Cotización</h2>
<p>Llene los datos para hacer la cotización</p>
</center>

<div class="container">
  <form action="/action_page.php">
  	<div class="row">
  		<div class="col-75">
  			<input type="text" id="fname" name="firstname" placeholder="Buscar material.."> 		
  		</div>
  		<div class="col-25">
  			<!--<button>Buscar</button>-->
  			<input type="submit" value="Buscar">
  		</div>
  	</div>
  	<!--Tabla-->
    <div class="row">
      <div class="col-10">
        <label for="dist">Distancia</label>
      </div>
      <div class="col-40">
        <input type="text" id="dist" name="dist" placeholder="En km..">
      </div>
      <div class="col-10">
        <label for="tiempo">Tiempo aprox.</label>
      </div>
      <div class="col-40">
        <input type="text" id="tiempo" name="tiempo" placeholder="En horas..">
      </div>      
    </div>
    <div class="row">
      <div class="col-10">
        <label for="fname">Costo mínimo:</label>
      </div>
      <div class="col-40">
        <input type="text" id="cosmin" name="cosmin" placeholder="1..">
      </div>
      <div class="col-10">
        <label for="lname">Costo máximo:</label>
      </div>
      <div class="col-40">
        <input type="text" id="lname" name="lastname" placeholder="5..">
      </div>      
    </div>
    <div class="row">
      <div class="col-25">
        <label for="tipoPago">Tipo de pago:</label>
      </div>
      <div class="col-75">
        <select id="tipoPago" name="tipoPago">
          <option value="efectivo">Efectivo</option>
          <option value="credito">Crédito</option>
        </select>
      </div>
    </div>
    <div class="row">
      <input type="submit" value="Cotizar">
    </div>
  </form>
</div>

</body>
</html>