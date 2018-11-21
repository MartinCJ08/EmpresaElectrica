<!DOCTYPE html>
<html lang="es">
<head>
  <title>Instalaciones Eléctricas</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 550px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
        
    /* On small screens, set height to 'auto' for the grid */
    @media screen and (max-width: 767px) {
      .row.content {height: auto;} 
    }

    /*Inicio de estilo busqueda*/

/*    .container-1{
      width: 300px;
      vertical-align: middle;
      white-space: nowrap;
      position: relative;
    }*/
    .container-1 input#search{
      width: 300px;
      height: 50px;
      background: #2b303b;
      border: none;
      font-size: 10pt;
      float: left;
      color: #63717f;
      padding-left: 45px;
      -webkit-border-radius: 5px;
      -moz-border-radius: 5px;
      border-radius: 5px;
      -webkit-transition: background .55s ease;
      -moz-transition: background .55s ease;
      -ms-transition: background .55s ease;
      -o-transition: background .55s ease;
      transition: background .55s ease;
    }
    .container-1 input#search::-webkit-input-placeholder {
       color: #65737e;
    }
     
    .container-1 input#search:-moz-placeholder { /* Firefox 18- */
       color: #65737e;  
    }
     
    .container-1 input#search::-moz-placeholder {  /* Firefox 19+ */
       color: #65737e;  
    }
     
    .container-1 input#search:-ms-input-placeholder {  
       color: #65737e;  
    }
    .container-1 input#search::-webkit-input-placeholder {
       color: #65737e;
    }
     
    .container-1 input#search:-moz-placeholder { /* Firefox 18- */
       color: #65737e;  
    }
     
    .container-1 input#search::-moz-placeholder {  /* Firefox 19+ */
       color: #65737e;  
    }
     
    .container-1 input#search:-ms-input-placeholder {  
       color: #65737e;  
    }
    .container-1 input#search:hover, .container-1 input#search:focus, .container-1 input#search:active{
        outline:none;
        background: #ffffff;
    }

    /*find e estilo de busqueda*/

    /*inicio de etilo tablas*/
    #customers {
        font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        /*width: 100%;*/
    }

    #customers td, #customers th {
        border: 1px solid #ddd;
        padding: 8px;
    }

    #customers tr:nth-child(even){background-color: #f2f2f2;}

    #customers tr:hover {background-color: #ddd;}

    #customers th {
        padding-top: 12px;
        padding-bottom: 12px;
        text-align: left;
        background-color: #818181;
        color: white;
    }

    /*fin de estilo tablas*/


  </style>
</head>
<body>

<nav class="navbar navbar-inverse visible-xs">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a data-toggle="tab" href="#">Inicio</a></li>
        <li><a data-toggle="tab" href="#">Cotizaciones</a></li>
        <li><a data-toggle="tab" href="#">Clientes</a></li>
        <li><a data-toggle="tab" href="#">Aspirantes</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav hidden-xs">
      <h2>Logo <br> Instalaciones Eléctricas</h2>
      <ul class="nav nav-pills nav-stacked">
		<li><a data-toggle="tab" href="#tabinicio">Inicio</a></li>
        <li><a data-toggle="tab" href="#tabcotizaciones">Cotizaciones</a></li>
        <li><a data-toggle="tab" href="#tabclientes">Clientes</a></li>
        <li><a data-toggle="tab" href="#tabaspirantes">Aspirantes</a></li>
      </ul><br>
	  
	  
	  
	  
    </div>
    <br>

<?php
  include("conec.php");
  $link=Conectarse();
  
  #$query="select * from cliente";
  #$result=mysqli_query($link,$query);
?> 
	
    <div class="tab-content">
        <div id="tabinicio" class="tab-pane fade">
            <h3>Inicio</h3>
            <p>Aquí se muestran datos de la empresa...</p>
        </div>
		
        <div id="tabcotizaciones" class="tab-pane fade">
            <h3>Contacto</h3>
            <p>Aquí se muestran datos para contacto</p>
            
            <div class="box">
              <div class="container-1">
                  <span class="icon"><i class="fa fa-search"></i></span>
                  <input type="search" id="search" placeholder="Búsqueda..." />
              </div>
            </div>
            <br><br><br><br>


            <table id="customers">
              <tr>
                <th>Nombre</th>
                <th>Descripción</th>
                <th>Precio</th>
              </tr>
              <tr>
                <td>Tubería PVC 5''</td>
                <td>Comprada en Mayer's</td>
                <td>40</td>
              </tr>
            </table>

            <p>Costo mínimo:   </p>
            <p>Costo máximo:   </p>
            <input type="text" name="">
            <p>Tiempo estimado:</p>
            <p>Tipo de pago:</p>
            <button>Calcular</button>
            

        </div>
		
		<div id="tabclientes" class="tab-pane fade">
            <h3>Login</h3>
            <p>Aquí se inicia sesión y se registra</p>
        </div>
		
		<div id="tabaspirantes" class="tab-pane fade">
            <h3>Aspirantes</h3>
            

            <center>
              <table border="1" cellspacing="1" cellpadding="1">
                  <tr bgcolor="1122dd">
                    <td >&nbsp;idProspecto</td>
                    <td>&nbsp;nombre&nbsp;</td>
                    <td>&nbsp;Apellido paterno&nbsp;</td>
                    <td>&nbsp;apellido materno&nbsp;</td>
                    <td>&nbsp;Celular&nbsp;</td>
                    <td>&nbsp;Correo&nbsp;</td>
                    <td>&nbsp;Documento&nbsp;</td>
                  </tr>
            <?php
              $query="select * from prospecto";
              $result=mysqli_query($link,$query);

              while($row = mysqli_fetch_array($result)) {
                 
                echo "<tr><td align='center' bgcolor='ff2233'>".$row["idProspecto"]."</td>";
                echo "<td >".$row["nombre"]."</td>";
                echo "<td>".$row["ape_pat"]."</td>";
                echo "<td>".$row["ape_mat"]."</td>";
                echo "<td>".$row["cel"]."</td>";
                echo "<td>".$row["correo"]."</td>";
                echo "<td>".$row["doc"]."</td>";
              }
               mysqli_free_result($result);
            ?>
              </table> 
            </center>




        </div>
  </div>
  
</div>

</div>
</body>
<footer>

  <!--<p>Creado Por: ...</p>
  <p>Contacto <a href="mailto:email@hotmail.com">
  email@hotmail.com</a>.</p>-->
</footer>
</html>