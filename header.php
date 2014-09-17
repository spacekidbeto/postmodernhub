<?
  $name = "Roberto";
  if ($_GET["name"] != "") {
    $name = $_GET["name"];
  }
?>
<!DOCTYPE html><!-- html5 doctype. I forgot this in class. -->
<html lang="en-US"><!-- <<<- that's the start of an html document. The root node of this page's DOM. -->
<head>
  <title>RHDZ</title>
  <meta charset="utf-8">
  <link href="mn.css" rel="stylesheet" type="text/css">
  <meta name="keywords" content="3kings, beto, dallas, Roberto Hernandez, weird">
  <meta name="description" content="Bite Me.">
  <meta content="Roberto Hernandez" name="author">
  <link href="/images/favicon.ico" rel="shortcut icon" type="image/x-icon">
  <style>
    h1 {
      /* Notice that this style is never applied. Why? What overrides it? */
      color:#FF0000;
    }
  </style>
  <link href="/images/favicon.ico" rel="shortcut icon" type="image/x-icon">
</head>
<body>
  <a href="https://github.com/spacekidbeto/postmodernhub"><img style="position: absolute; top: 0; right: 0; border: 0;" src="https://camo.githubusercontent.com/52760788cde945287fbb584134c4cbc2bc36f904/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f6769746875622f726962626f6e732f666f726b6d655f72696768745f77686974655f6666666666662e706e67" alt="Fork me on GitHub" data-canonical-src="https://s3.amazonaws.com/github/ribbons/forkme_right_white_ffffff.png"></a>
  <!-- note the style attribute. Try to avoid this habit -->
  <h1 style="color:#fff;"> R H D Z a.k.a <?= $name ?> </h1>