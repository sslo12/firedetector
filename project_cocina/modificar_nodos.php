<?php

$id=$_POST["id"]; 
$direccion=$_POST["direccion"]; 

$url = "http://192.168.100.2:3002/nodo/$id"; 
$data = array( 
    'direccion' => $direccion, 
); 
echo " <h2> info</h2>";
echo " el id es : ". $id ."<br>" ;
    
$json_data = json_encode($data); 
$ch = curl_init(); 
curl_setopt($ch, CURLOPT_URL, $url); 
curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'PUT'); 
curl_setopt($ch, CURLOPT_POSTFIELDS, $json_data); 
curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json')); 
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true); 
$response = curl_exec($ch); 
if ($response===false){ 
    header("Location:index.html"); } 
curl_close($ch); 
header("Location:admin_Nodo.php"); 

?>