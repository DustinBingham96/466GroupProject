<?php

//echo "You are inside addPart";
//This file (addPart.php) will add a new part to the Database 
try
{
	include("myUserPass.php");
	include("tables.php");

		$dsn = "mysql:host=courses;dbname=z1861700";
		$pdo = new PDO($dsn, $username, $password);
		$pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);

        //$mysql = "INSERT INTO WORKOUT(DateTime,Type,Intensity,Duration,ID) VALUES (?,?,?,?,?)";
        
        $mysql = "INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES (?, ?, ?, ?, ?);";

		$rspre = $pdo->prepare($mysql);
		
        $rspre->execute(array($_POST["Workout_time"],$_POST["Workout_type"],$_POST["Workout_intencity"],$_POST["Workout_duration"],$_POST["Workout_ID"]));
        
        //$mysql = "SELECT * FROM TypeOfWorkout WHERE Name = ?";

        //$rspre = $pdo->prepare($mysql);

        //$record = $rspre->fetchAll(PDO::FETCH_ASSOC); 

		echo "Workout Succesfully Added!";
}
	catch(PDOexception $e)
	{ 
		echo "Connection to database failed: ". $e->getMessage();
	}

?>