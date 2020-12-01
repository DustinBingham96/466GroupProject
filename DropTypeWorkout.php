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
        
		echo "<h2>You have succefully viewed he type's of workouts!</h2>";
}
	catch(PDOexception $e)
	{ 
		echo "Connection to database failed: ". $e->getMessage();
	}

?>