<html><head><title>Foods Eaten</title></head>
<script src="https://www.w3schools.com/lib/w3.js"></script>
<body>
<?php

  include("secrets.php");
  include("library.php");
  include("librarynew.php");
  try {
    $dsn = "mysql:host=courses;dbname=z1865959"; //sets up a variable for the connection to the database
    $pdo = new PDO($dsn, $username, $password);  //connects to the database
    $pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION); //sets the error mode attribute for debugging

	//$rs = $pdo->query("SELECT Name, foodCategory, macProteins, macFats, macCarbohydrates FROM FOODS WHERE Name IN(SELECT Meat FROM MEAL WHERE ID = 1) OR Name IN(SELECT Vegetable FROM MEAL WHERE ID = 1) OR Name IN(SELECT Fruit FROM MEAL WHERE ID = 1)OR Name IN(SELECT Beverage FROM MEAL WHERE ID = 1);");
	$rs = $pdo->prepare("SELECT Name, foodCategory, macProteins, macFats, macCarbohydrates, dailyValue, ssGrams, vitaminA,vitaminC,vitaminD,Calcium,Magnesium,Potassium,Sodium FROM FOODS WHERE Name IN(SELECT Meat FROM MEAL WHERE DateTime BETWEEN :TO AND :FROM AND ID = 1) OR Name IN(SELECT Vegetable FROM MEAL WHERE DateTime BETWEEN :TO AND :FROM AND ID = 1) OR Name IN(SELECT Fruit FROM MEAL WHERE DateTime BETWEEN :TO AND :FROM AND ID = 1)OR Name IN(SELECT Beverage FROM MEAL WHERE DateTime BETWEEN :TO AND :FROM AND ID = 1);");
	 $rs->execute(array(':TO' => $_GET["TO"], ':FROM' => $_GET["FROM"] ));

	$rows = $rs->fetchAll(PDO::FETCH_ASSOC);

	echo "<h1>Food over selected period of time</h1>";
        //calls outside function called draw table, passing the variable called rows that was the result set of the query
   	draw_table1($rows);
   	echo "<br/>";

  }
  catch(PDOexception $e) {
    echo "Connection to database failed: " . $e->getMessage();
  }
?>
</body></html>
