<!DOCTYPE html>
<html lang="es">
<head>
  <title>Instalaciones Eléctricas</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/admin_style.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
        <li><a data-toggle="tab" href="#">Clientes</a></li>
        <li><a data-toggle="tab" href="#">Cotizaciones</a></li>
        <li><a data-toggle="tab" href="#">Trabajos</a></li>
        <li><a data-toggle="tab" href="#">Material</a></li>
        <li><a data-toggle="tab" href="#">Equipo</a></li>
        <li><a data-toggle="tab" href="#">Prospecto</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav hidden-xs">
      <h2>Logo <br> Instalaciones Eléctricas</h2>
      <ul class="nav nav-pills nav-stacked">
    <li><a data-toggle="tab" href="#tabclientes">Clientes</a></li>
        <li><a data-toggle="tab" href="#tabcotizacion">Cotizaciones</a></li>
        <li><a data-toggle="tab" href="#tabtrabajos">Trabajos</a></li>
        <li><a data-toggle="tab" href="#tabmaterial">Material</a></li>
        <li><a data-toggle="tab" href="#tabequipo">Equipo</a></li>
        <li><a data-toggle="tab" href="#tabprospecto">Prospecto</a></li>
      </ul><br>
    
    
    
    
    </div>
    <br>

  
    <div class="tab-content">
        <div id="tabclientes" class="tab-pane fade">
            <center>
            <h3>Clientes</h3>
            <p>clientes</p>

            <form>
                <input class="container-1" type="text" name="search" placeholder="Buscar material..">    
                <div class="select">
                <select name="slct" id="slct">
                  <option>Choose an option</option>
                  <option value="1">Pure CSS</option>
                  <option value="2">No JS</option>
                  <option value="3">Nice!</option>
                </select>
                </div>
                <button class="button">Buscar</button>
                
                <button class="button">Mostrar todo</button>

            </form>
            
            <!--
            <table id="customers">
              <tr>
                <th>Company</th>
                <th>Contact</th>
                <th>Country</th>
              </tr>
              <tr>
                <td></td>
                <td></td>
                <td></td>
              </tr>
            </table>-->
            </center>
        </div>
    
        <div id="tabcotizacion" class="tab-pane fade">
            <h3>cotzacion</h3>
            <p>cotizacion</p>
         </div>
    
    <div id="tabtrabajos" class="tab-pane fade">
            <h3>trabajos</h3>
            <p>trabajos</p>
        </div>
    
    <div id="tabmaterial" class="tab-pane fade">
            <h3>material</h3>
            <p>material</p>
        </div>
    <div id="tabequipo" class="tab-pane fade">
            <h3>equipo</h3>
            <p>equipo</p>
        </div>
    <div id="tabprospecto" class="tab-pane fade">
            <h3>Prospecto</h3>
            <p>prospecto</p>
        </div>
  </div>
  
</div>

</div>



</body>
<footer>
  <p>Creado Por: ...</p>
  <p>Contacto <a href="mailto:email@hotmail.com">
  email@hotmail.com</a>.</p>
</footer>
</html>