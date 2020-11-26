<html>
<head>
    <title>Food DB</title>
</head>
<body>
    <h1>Food</h1>
    <b>Click below for a list of all foods!</b> <br/><br/>
    <a href="?listF=all">List all Foods</a>
    <br/><br/>
    <b>Or type the name of the food you'd like to search for!</b> <br/><br/>
    <form>
	Search for a food! <input size=5 type="text" name="listF"/>

	<input type="submit" value="Go!"/>
    </form>
<?php
include('userpass.php');
include('DrawTable.php');

	try {
		$dsn = "mysql:host=$servername;dbname=$dbname";
		$pdo = new PDO($dsn, $username, $password);
		$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	}
	catch(PDOexception $e) {
		echo "Connection to database failed: " . $e->getMessage();
	}

	// Show all foods
	if (isset($_GET['listF'])) {
		if ($_GET['listF'] == 'all') {
			try {
				$error = null;
				$rs = $pdo->query("SELECT Name, foodCategory, macProteins, macFats, macCarbohydrates, vitaminA, vitaminE, vitaminC, vitaminD, Calcium, Chloride, Magnesium, Phosphorus, Potassium, Sodium, Sulfur FROM FOODS;");
				$rows = $rs->fetchAll(PDO::FETCH_ASSOC);
				echo "<b>ALL FOODS\n\n</b>";
				draw_table($rows);
			}
			catch(PDOexception $e) {
				echo "Query failed: " . $e->getMessage();
			}
		} else {
			// User selects food
			try {
				$sql="SELECT Name, foodCategory, macProteins, macFats, macCarbohydrates, vitaminA, vitaminE, vitaminC, vitaminD, Calcium, Chloride, Magnesium, Phosphorus, Potassium, Sodium, Sulfur FROM FOODS WHERE Name =?";
				$rs = $pdo->prepare($sql);
				$rs->execute([$_GET['listF']]);
				$rows = $rs->fetchAll(PDO::FETCH_ASSOC);
				if (!$rows) {
					echo "<b>** ERROR ** FOOD DOES NOT EXIST IN DATABASE</b>";
				} else {
					draw_table($rows);
				}
			}
			catch(PDOexception $e) {
				echo "Query failed: " . $e->getMessage();
			}
		}	
	}		
?>
</body></html>
