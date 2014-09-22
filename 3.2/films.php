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
	<p><a href="add_film.php">[+] Add a new film</a></p>
</head>
<body>
<h1>Films</h1>

<p><a href="add_film.php">[+] Add a new film</a></p>
<ul>
<? while($row = $results->fetch_assoc()){ ?>
<li><?= $row["id"] . " " . $row["title"] ?><a href="film_details.php?film_id=1"></li>
<<<<<<< HEAD
$mysqli->close();
<? } ?>	
=======
<? } $mysqli->close();?>	
>>>>>>> FETCH_HEAD
</li>
</body>
</html>

