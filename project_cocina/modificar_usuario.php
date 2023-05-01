<?php
$id=$_POST["id"]; 
$correo=$_POST["correom"]; 
$telefono1=$_POST["telefono1m"]; 
$telefono2=$_POST["telefono2m"]; 

echo $correo;
echo $telefono1;
echo $telefono2;
echo $id;

$url = "http://192.168.100.2:3001/usuario/$id"; 
$data = array( 
    'correo' => $correo,
    'telefono1' => $telefono1,
    'telefono2' => $telefono2,
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
header("Location:admin.php"); 

?>