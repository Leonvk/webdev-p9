<?php
function logout() {
  $_SESSION["user"] = "";
  header("Location: login-register.php");
}
?>
