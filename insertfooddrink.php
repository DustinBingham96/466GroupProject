<?php
    $username = "z1880434";
    $password = "1993Oct12";

    try{

    }
    catch(PDOException $e){
        echo "Error: " . $e->getMessage();
        $dsn = "mysql:host=courses;dbname=henrybooks";
        $pdo = new PDO($dsn, $username, $password);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }
?>