<!DOCTYPE html>
<html lang="en-US">
<head>
  <title>Films</title>
</head>
<body>
  <h1>Films</h1>
<<<<<<< HEAD
<h3 style="border:1px solid orange;">Deleted record 20</h3>

<p><a href="add_film_form.php">[+] Add a new film</a></p>

<h2>Current films in the database</h2>
<ul>
  <li><a href="film.php?id=19">The Incredibles</a> <a onclick="confirm('Are you sure?')" href="delete_film.php?id=19">[x]</a></li>
  <li><a href="film.php?id=13">Harry Potter Goes to Hell</a> <a onclick="confirm('Are you sure?')" href="delete_film.php?id=13">[x]</a></li>
  <li><a href="film.php?id=15">Dr. Zhivago</a> <a onclick="confirm('Are you sure?')" href="delete_film.php?id=15">[x]</a></li>
  <li><a href="film.php?id=16">A View to a Kill</a> <a onclick="confirm('Are you sure?')" href="delete_film.php?id=16">[x]</a></li>
  <li><a href="film.php?id=17">James Bond vs. Jason Bourne</a> <a onclick="confirm('Are you sure?')" href="delete_film.php?id=17">[x]</a></li>
</ul>


<p><small><a href="index.php">Back to list</a></p>
=======


<p><a href="add_film.php">[+] Add a new film</a></p>

<h2>Current films in the database</h2>
<ul>
  <li><?= $row["id"] . " " . $row["title"] ?><a href="film_details.php?film_id=1"></li>
<? ?>
</ul>
<p><small><a href="films.php">Back to list</a></p>
>>>>>>> FETCH_HEAD
</body>
</html>
