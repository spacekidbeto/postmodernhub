<!DOCTYPE html>
<html lang="en-US">
<head>
  <title>Films</title>
</head>
<body>
  <h1>Films</h1>


<p><a href="add_film.php">[+] Add a new film</a></p>

<h2>Current films in the database</h2>
<ul>
  <li><?= $row["id"] . " " . $row["title"] ?><a href="film_details.php?film_id=1"></li>
<? ?>
</ul>
<p><small><a href="films.php">Back to list</a></p>
</body>
</html>
