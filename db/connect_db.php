<?php

try{
    $pdo = new PDO('mysql:host=localhost;dbname=ipos','hallelujah','Godwins+$');
    //echo 'Connection Successfull';
}catch(PDOException $error){
    echo $error->getmessage();
}


?>