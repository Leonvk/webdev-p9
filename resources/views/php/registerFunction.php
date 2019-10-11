<?php
function register() {
  $mysqli = new mysqli("localhost", "root", "", "coralyachts");

  $query = $mysqli->prepare("INSERT INTO customers(firstname, lastname, address, email) VALUES ('".$_POST["fnameText"]."','".$_POST["lnameText"]."','".$_POST["addressText"]."','".$_POST["mailText"]."') ");
  $query->execute();
  $query->store_result();

  $rows = $query->num_rows;

  if($query == false)
  {
    echo "register failed";
  }
  else
  {
    echo "register successful";
  }
}
?>
