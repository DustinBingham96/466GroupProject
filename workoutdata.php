<html>
    <head>
        <title>User  1 Workout Data</title></head>
        <script src="https://www.w3schools.com/lib/w3.js"></script>
        <body>
    

<?php
    include("secrets.php");
    include("library.php");
    

    try
    {
        $dsn = "mysql:host=courses;dbname=z1756030";
        $pdo = new PDO($dsn, $username, $password);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $rs = $pdo->prepare("SELECT * FROM WORKOUT WHERE ID = 1 AND DateTime BETWEEN :TO AND :FROM;");
        $rs->execute(array(':TO' => $_GET["TO"], ':FROM' => $_GET["FROM"]));
        $rows = $rs->fetchAll(PDO::FETCH_ASSOC);

        echo "<h1>Workouts over selected period of time</h1>";

        draw_table($rows);
        echo "<br/>";

    }

    catch(PDOexecption $e)
    {
        echo "Connection to database failed: " . $e->getMessage();
    }

    
?>
</body></html>
