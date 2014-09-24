<?
include("db_.php");
$id = $_POST["id"];
$title = $_POST["title"];
$sql = "UPDATE examples SET title = '" . $title . "' WHERE id = " . $id . ";";
$db->query($sql);
$db->close();
$flash = "Updated record " . $id . " with new title " . $title;
header("Location: http://hernandez.humanoriented.com/films.php?id=" . $id . "&flash=" . urlencode($flash));
?>