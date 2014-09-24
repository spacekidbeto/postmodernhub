<?
$page_title = "Add a New Film";
?>
<? include("header.php"); ?>

<form action="add_film.php" method="POST">
  <label for="title">Film Title</label>
  <input type="text" name="title" />
  <input type="submit" value="Add Film" />
</form>

<? include("foot.php"); ?>
