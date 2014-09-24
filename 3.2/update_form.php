<? include("db_.php"); ?>
<?
$id = $_GET["id"];
$sql = "SELECT id, title FROM examples WHERE id = " . $id . ";";
$results = $db->query($sql);
$row = $results->fetch_assoc();
$film_title = $row["title"];
$page_title = "Update Film";
?>
<? include("head.php"); ?>

<form action="update_film.php" method="POST">
  <input type="hidden" name="id" value="<?= $id ?>" />
  <label for="title">Film Title</label>
  <input type="text" name="title" value="<?= $film_title ?>" />
  <input type="submit" value="Add Film" />
</form>

<? include("foot.php"); ?>
