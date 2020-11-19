<?php
    $username = 'z1756030';
    $password = '1996Mar07';

    try
    {
        $dsn = "mysql:host=courses;dbname=z1756030";
        $pdo = new PDO($dsn, $username, $password);
    }

    catch(PDOexecption $e)
    {
        echo "Connection to database failed: " . $e->getMessage();
    }

    function getWorkout($pdo)
    {
        echo '<p>';
        //get Workouts
        $sql = "SELECT * from WORKOUT";
        $res = $pdo->query($sql);
        $allRows = $res->fetchAll();
        $rows = count($allRows);
        //display workouts
        echo '<table border=1>';
        echo '<th>Date/Time</th>';
        echo '<th>Type</th>';
        echo '<th>Intensity</th>';
        echo '<th>Duration</th>';
        echo '<th>User</th>';
        for($i=0; $i < $rows; $i++)
        {
            echo '<tr allign=center>';
            for($j=0; $j < 5; $j++)
            {
                echo '<td>' . $allRows[$i][$j] . '</td>';
            }
            echo '</tr>';
        }
        echo '</table>';
        echo '</p>';
    }
?>


<html>
    <head>
        <h1>User Workout Data</h1>
        <h3>All Workout Data</h3>
        <?php getWorkout($pdo); ?>
    </head>
</html>