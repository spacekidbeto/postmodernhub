<?
$mysqli = new mysqli("crcp3320db.humanoriented.com", "rohernandez", "Crcp3320", "rohernandez");
if ($mysqli->connect_errno) {
    echo 'Could not connect: ' . $mysqli->connect_errno . ") " . $mysqli->connect;
}
$id = $_GET["id"];
$results = $mysqli->query("SELECT id, title FROM examples WHERE id = " . $id . ";");
$row = $results->fetch_assoc();
$film_title = $row["title"];
?>
<!DOCTYPE html>
<html lang = "en-US"
<head>
	<title>Film <?= $film_title ?></title>
</head>
<body>
<h1><?= $Film_title ?></h1>
</body>
</html>
<? $mysqli->close(); ?>