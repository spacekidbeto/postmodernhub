<? include("db_.php"); ?>
<?
$sql = "SELECT id, title FROM examples;";
$results = $db->query($sql);
$page_title = "Films";
?>
<? include("head.php"); ?>

<p><a href="add_film_form.php">[+] Add a new film</a></p>

<h2>Current films in the database</h2>
<ul>
<? while ($row = $results->fetch_assoc()) { ?>
  <li><a href="films.php?id=<?= $row["id"] ?>"><?= $row["title"]; ?></a> <a onclick="confirm('Are you sure?')" href="delete_film.php?id=<?= $row["id"] ?>">[x]</a></li>
<? } ?>
</ul>

<? include("foot.php"); ?>
