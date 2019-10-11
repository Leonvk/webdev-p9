<?php
function checkSess() {
  if($_SESSION["user"] != "") {
    // header("Location: index.php");
    echo "You're already logged in!";
  }
  else
  {

  }
}

?>
