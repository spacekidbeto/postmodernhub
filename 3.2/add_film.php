<?
include("db_.php");
$title = $_POST["title"];
$sql = "INSERT INTO examples(title) VALUES('" . $title . "');";
$db->query($sql);
$db->close();
$flash = "Added movie titled " . $title;
header("Location: http://hernandez.humanoriented.com/src.php?flash=" . urlencode($flash));
?>