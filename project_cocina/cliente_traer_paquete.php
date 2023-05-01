<?php

$descripcion=$_POST["descripcion"]; 
$usuario=$_POST["usuario"]; 
$estado=$_POST["estado"];

$url = "http://localhost:3000/paquete"; 
$data = array( 
    'descripcion' => $descripcion, 
    'usuario_dueno' => $usuario, 
    'estado' => $estado, 
); 
echo " <h2> info</h2>";
echo " el nombre es : ". $nombre ."<br>" ;
    
$json_data = json_encode($data); 
$ch = curl_init(); 
curl_setopt($ch, CURLOPT_URL, $url); 
curl_setopt($ch, CURLOPT_POST, true); 
curl_setopt($ch, CURLOPT_POSTFIELDS, $json_data); 
curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json')); 
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true); 
$response = curl_exec($ch); 
if ($response===false){ 
    header("Location:index.html"); } 
curl_close($ch); 
header("Location:usuario.php"); 

?>