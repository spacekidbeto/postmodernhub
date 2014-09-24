<?
$mysqli = new mysqli("crcp3320db.humanoriented.com", "rohernandez", "Crcp3320", "rohernandez");
if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}
?>