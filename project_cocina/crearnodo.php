<?php
$direccion=$_POST["direccion"];
$id_usuario=$_POST["id_usuario"];

echo $direccion;
echo $id_usuario;

$url = 'http://192.168.100.2:3002/nodo'; 
$data = array( 
    'direccion' => $direccion, 
    'id_usuario' => $id_usuario,
); 
    
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
header("Location:crear_nodo.php"); 

?>