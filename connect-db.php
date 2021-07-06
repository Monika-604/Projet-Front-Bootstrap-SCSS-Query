<?php
$db=[
    "host"=>"localhost",
    "username"=>"root",
    "password"=>"root",
    "db_name"=>"fashop"
    ];

try {
    $connect=new PDO('mysql:host='.$db["host"].
                          ';dbname='.$db["db_name"],
                            $db["username"],
                            $db["password"]);
}catch (Exception $error){
    echo $error->getMessage();
}
