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
                <input type="text" name="search" placeholder="Buscar material..">    
                <button class="button">Buscar</button>
                
                <button class="button">Mostrar todo</button>      
                <div class="custom-select"><select>
                    <option value="0">Filtro:</option>
                    <option value="1">Audi</option>
                    <option value="2">BMW</option>
                </select></div>    
            </form>
            <div class="custom-select" style="width:200px;">

            </div>
            
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


<script type="text/javascript">
var x, i, j, selElmnt, a, b, c;
/*look for any elements with the class "custom-select":*/
x = document.getElementsByClassName("custom-select");
for (i = 0; i < x.length; i++) {
  selElmnt = x[i].getElementsByTagName("select")[0];
  /*for each element, create a new DIV that will act as the selected item:*/
  a = document.createElement("DIV");
  a.setAttribute("class", "select-selected");
  a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
  x[i].appendChild(a);
  /*for each element, create a new DIV that will contain the option list:*/
  b = document.createElement("DIV");
  b.setAttribute("class", "select-items select-hide");
  for (j = 0; j < selElmnt.length; j++) {
    /*for each option in the original select element,
    create a new DIV that will act as an option item:*/
    c = document.createElement("DIV");
    c.innerHTML = selElmnt.options[j].innerHTML;
    c.addEventListener("click", function(e) {
        /*when an item is clicked, update the original select box,
        and the selected item:*/
        var y, i, k, s, h;
        s = this.parentNode.parentNode.getElementsByTagName("select")[0];
        h = this.parentNode.previousSibling;
        for (i = 0; i < s.length; i++) {
          if (s.options[i].innerHTML == this.innerHTML) {
            s.selectedIndex = i;
            h.innerHTML = this.innerHTML;
            y = this.parentNode.getElementsByClassName("same-as-selected");
            for (k = 0; k < y.length; k++) {
              y[k].removeAttribute("class");
            }
            this.setAttribute("class", "same-as-selected");
            break;
          }
        }
        h.click();
    });
    b.appendChild(c);
  }
  x[i].appendChild(b);
  a.addEventListener("click", function(e) {
      /*when the select box is clicked, close any other select boxes,
      and open/close the current select box:*/
      e.stopPropagation();
      closeAllSelect(this);
      this.nextSibling.classList.toggle("select-hide");
      this.classList.toggle("select-arrow-active");
    });
}
function closeAllSelect(elmnt) {
  /*a function that will close all select boxes in the document,
  except the current select box:*/
  var x, y, i, arrNo = [];
  x = document.getElementsByClassName("select-items");
  y = document.getElementsByClassName("select-selected");
  for (i = 0; i < y.length; i++) {
    if (elmnt == y[i]) {
      arrNo.push(i)
    } else {
      y[i].classList.remove("select-arrow-active");
    }
  }
  for (i = 0; i < x.length; i++) {
    if (arrNo.indexOf(i)) {
      x[i].classList.add("select-hide");
    }
  }
}
/*if the user clicks anywhere outside the select box,
then close all select boxes:*/
document.addEventListener("click", closeAllSelect);
</script>

</body>
<footer>

  <!--<p>Creado Por: ...</p>
  <p>Contacto <a href="mailto:email@hotmail.com">
  email@hotmail.com</a>.</p>-->
</footer>
</html>