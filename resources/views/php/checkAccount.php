<?php
function checkAcc() {
  if (!isset($_SESSION["user"])) {
    echo "Login";
    $_SESSION["user"] = "";
  }
  elseif($_SESSION["user"] != "") {
    echo "Account";
  }
  else
  {
    echo "Login";
  }
}

?>
