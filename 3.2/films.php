<?
$mysqli = new mysqli("crcp3320db.humanoriented.com", "rohernandez", "Crcp3320", "rohernandez");
if ($mysqli->connect_errno) {
    echo "Could not connect: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}
$results = $mysqli->query("SELECT id, title FROM examples")
?>
<!DOCTYPE html>
<html lang = "en-US"
<head>
	<title>Films</title>
</head>
<body>
<h1>Films</h1>
<ul>
<? while($row = $results->fetch_assoc()){ ?>
<li><?= $row["id"] . " " . $row["title"] ?><a href="film_details.php?film_id=1"></li>
<? } ?>	
</li>
</body>
</html>
$mysqli->close();
