<?php

	$servername = "localhost";
	$username = "admin";
	$password = "adminpsw";
	$dbname = "db_wordpress";

	// Create connection
	$conn = mysqli_connect($servername, $username, $password, $dbname);
	// Check connection
	if (!$conn) {
  		die("Connection failed: " . mysqli_connect_error());
	}

	$sql = "SELECT id, firstname FROM students";
	$result = mysqli_query($conn, $sql);

	if (mysqli_num_rows($result) > 0) {
	// output data of each row
	while($row = mysqli_fetch_assoc($result)) {
		echo "id: " . $row["id"]. " - Name: " . $row["firstname"]. "<br>";
	}
	} else {
	echo "0 results";
	}
	mysqli_close($conn);
?>