<?
include("db_c.php");
$id = $_GET["id"];
$sql = "DELETE FROM examples WHERE id = " . $id . ";";
$db->query($sql);
$db->close();
$flash = "Deleted record " . $id;
header("Location: http://hernandez.humanoriented.com/src.php?flash=" . urlencode($flash));
?>