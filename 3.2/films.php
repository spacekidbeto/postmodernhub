<? include("db_.php"); ?>
<?
$id = $_GET["id"];
$sql = "SELECT id, title FROM examples WHERE id = " . $id . ";";
$results = $db->query($sql);
$row = $results->fetch_assoc();
$film_title = $row["title"];

$page_title = "Film: " . $film_title;
?>
<? include("head.php"); ?>

<p>Film details, photo, etc. might appear here.</p>

<p><a href="update_form.php?id=<?= $id ?>">Update this film</a></p>

<? include("foot.php"); ?>
