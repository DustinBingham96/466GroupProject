<html><head><title>Update Workout</title></head>
<body>
<h1>Workout Log</h1>
<?php
    include("myUserPass.php");
    include("tables.php");

    try 
    {
        $dsn = "mysql:host=courses;dbname=z1861700";//Establishinh connection to db
        $pdo = new PDO($dsn, $username, $password);//Setting variables

        $pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION); //In case of errors

        echo "<h2>Enter your workout</h2>";
        echo "<form action=\"http://students.cs.niu.edu/~z1861700/enterWorkout.php\" method=\"POST\">";

        // User Entering the Date and time of workout 
        echo "<label>Select Time: </label>";
        echo "<input type=\"datetime-local\" name=\"Workout_time\" /> <br/>";

        // Two workouts for the User 
        echo "<h2>Enter Type of Workout</h2>";
        echo "<input type=\"radio\" value =\"Cardio\" name=\"Workout_type\">";
        echo "<label for = \"Cardio\">Cardio</label>";

        echo "<input type =\"radio\" value =\"Strength\" name=\"Workout_type\">";
        echo "<label for = \"Strength\">Strength</label><br/>";

        // User Entering Intencity of workout 
        echo "<h2>Enter Workout Intencity</h2>";
        echo "<label>Select workout intencity (between 1 and 10):</label>";
        echo "<input type=\"number\" id=\"Intensity\" name=\"Workout_intencity\" min=\"1\" max=\"10\" />";

        // User Entering Duration of Workout
        echo "<h2>Enter Duration</h2>";
        //echo "<input type=\"time\" id=\"Duration\" name=\"Workout_duration\" />";
        echo "<input type=\"time\" name=\"Workout_duration\" list=\"limittimeslist\" step=\"0.001\" />";
        echo "<br/>";

        // User Entering Intencity of Workout
        echo "<h2>Enter UserID</h2>";
        echo "<input type=\"number\" name=\"Workout_ID\" min=\"1\" max=\"10\" /> <br/></br>";


        // Submit button
        echo "<input type=\"submit\" value=\"Submit Workout\">";

        echo "</form>";

        echo "<datalist id=\"limittimeslist\">";
        echo "<option value=\"00:15\">";
        echo "<option value=\"00:25\">";
        echo "<option value=\"00:35\">";
        echo "<option value=\"00:45\">";
        echo "<option value=\"00:50\">";
        echo "<option value=\"00:60\">";
        echo "</datalist>";

        echo "<h2>View Type of Workout's</h2>";
        // Dropdown for type of workouts 
        echo "<form action=\"http://students.cs.niu.edu/~z1861700/DropTypeWorkout.php\" method=\"POST\">";
        echo "<label for=\"TypeWorkout\">View type of workouts:";

        echo "<select name=\"TypeWorkout\" id=\"TypeWorkout\">";
        echo "<option value=\"Cardio\">Cardio</option>";
        echo "<option value=\"Strength\">Strength</option>";
        
        // Submit button
        echo "<br><br>";
        echo "<input type=\"submit\" value=\"Submit Type of Workout\">";

        
        echo "</form>";
    }

    catch(PDOexception $e)
    {
        echo "Connection failed, Try again!" . $e->getMessage();
    }

?>
</body>
</html>