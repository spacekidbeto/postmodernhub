<?php
// display form if user has not clicked submit
if (!isset($_POST["submit"])) {
  ?>
  <form method="post" action="<?php echo $_SERVER["PHP_SELF"];?>">
  From: <input type="text" name="from"><br>
  Subject: <input type="text" name="subject"><br>
  Message: <textarea rows="5" cols="40" name="message"></textarea><br>
  <input type="submit" name="submit" value="Send">
  </form>
  <?php 
} else {    // the user has submitted the form
  // Check if the "from" input field is filled out
  if (isset($_POST["from"])) {
    $from = $_POST["from"]; // sender
    $subject = $_POST["subject"];
    $message = $_POST["message"];
    // message lines should not exceed 100 characters (PHP rule), so wrap it
    $message = wordwrap($message, 1000);
    // send mail
    mail("hernandezr@smu.edu",$subject,$message,"From: $from\n");
    echo "Thank you for sending us feedback";
  }
}
?>