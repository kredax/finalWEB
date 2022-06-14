<?php
header('Content-Type: application/json');
include_once 'connection.php';

$db = new DatabaseConnection();
$request_method = $_SERVER['REQUEST_METHOD'];

$user = $_POST["usuario"];
$password = $_POST["password"];
if(isset($_POST["ingresar"])){
    $query = mysqli_query($conn,"SELECT * FROM login WHERE usuario = '".$user."' and password = '".$password."'");
    $nr = mysqli_nun_rows($query);

    if ($nr == 1){
        echo "<script> alert ('Bienvenido $usuario'): window.location='../home.html'</script>";
    }else{
        echo "<script> alert ('Usuario no existe'): window.location='cld.html'</script>";
    }
    

}





?>