<!DOCTYPE html>
<html>
<style>
body {
  font-family: Arial;
}

input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

div.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}

.nath{
    float: left;
    width: 29%;
    height: auto;
    padding: 20px;  
}
</style>
<body>

<center>
    <h1>Regístrate</h1>
    <p>Se parte de nuestra comunidad</p>
    <hr>
</center>


<div class="nath">
    
</div>

<br><br>    
<div class="container nath">
  <form action="insertUsuario.php" method="POST">
    <label for="fname">Nombre</label>
    <input type="text" id="fname" name="firstname" placeholder="Juanito..">

    <label for="lname">Apellido paterno</label>
    <input type="text" id="lname" name="lastname" placeholder="Perez..">

    <label for="lname">Apellido materno</label>
    <input type="text" id="lname" name="lastname" placeholder="Perez..">

    <label for="correo">Correo</label>
    <input type="text" id="lname" name="correo" placeholder="no_reply@nr.com">

    <label for="pass">Contraseña</label>
    <input type="password" id="lname" name="pass" placeholder="****">
<!--
    <label for="country">Country</label>
    <select id="country" name="country">
      <option value="australia">Australia</option>
      <option value="canada">Canada</option>
      <option value="usa">USA</option>
    </select>-->
  
    <input type="submit" value="Submit">
  </form>
</div>


<div class="nath"></div>

</body>
</html>