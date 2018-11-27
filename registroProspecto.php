<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">

<style>
body {
    font-family: Arial, Helvetica, sans-serif;
    background-color: black;
}

* {
    box-sizing: border-box;
}

/* Add padding to containers */
.container {
    padding: 16px;
    background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

/* Overwrite default styles of hr */
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

.registerbtn:hover {
    opacity: 1;
}

/* Add a blue text color to links */
a {
    color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
    background-color: #f1f1f1;
    text-align: center;
}
</style>
</head>
<body>



<form action="insertProspecto.php" method="POST">
  <div class="container">
    <h1></h1>
    <p>¡Envianos tus datos de empleo!</p>
    <hr>


    <label for="nombre"><b>Nombre</b></label>
    <input type="text" placeholder="" name="nombre" required>

    <label for="ape_pat"><b>Apellido paterno</b></label>
    <input type="text" placeholder="" name="ape_pat" required>

    <label for="ape_mat"><b>Apellido materno</b></label>
    <input type="text" placeholder="" name="ape_mat" required>


    <label for="cel"><b>Número de celular</b></label>
    <input type="text" placeholder="" name="cel" required>

    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="" name="correo" required>

    <label for="doc"><b>Solicitud de empleo / Curriculum vitae</b></label>
    <input name="doc" type="file" accept="application/pdf" />

    <hr>
    <!--<p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>-->

    <!--<button type="submit" class="registerbtn">Registrar</button>-->
    <input type="submit" name="accion" value="Enviar" class="registerbtn">
  </div>
  
  <div class="container signin">
    <p>¿Ya tienes una cuenta? <a href="#">Ingresa aquí</a>.</p>
  </div>
</form>

</body>
</html>