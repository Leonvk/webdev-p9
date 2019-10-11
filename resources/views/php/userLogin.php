<?php
function login() {
  $mysqli = new mysqli("localhost", "root", "", "coralyachts");

  $query = $mysqli->prepare("SELECT * FROM customers WHERE email = '".$_POST["mailText"]."' AND  customerID = '".$_POST["idText"]."' ");
  $query->execute();
  $query->store_result();

  $rows = $query->num_rows;

  if($_SESSION["user"] != "") {
    // header("Location: index.php");
    echo "You're already logged in! Logout before you try again!";
  }
  else
  {
    if($rows == 0)
    {
      echo 'Login failed';
    }
    else
    {
      $_SESSION["user"] = $_POST["mailText"];
      $_SESSION["userid"] = $_POST["idText"];
      echo 'Login successful';
    }
  }
}
?>
