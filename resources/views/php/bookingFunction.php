<?php
function booking() {

  $mysqli = new mysqli("localhost", "root", "", "coralyachts");

  $ID = 1;
  $CID = $_SESSION["userid"];
  $YID = 1;
  $status = "confirmed";
  $paymentstatus = "open";
  $paymentPrefrence = $_POST['payment'];
  $dates = $_POST['datestart'];
  $datee = $_POST['dateend'];
  if($_POST['catering'] == "Yes") {
  $catering = "Y";
  } else {
    $catering = "N";
  }
  if($_POST['skipper'] == "Yes") {
    $skipper = "Y";
  } else {
    $skipper = "N";
  }
  if($_POST['flottielje'] == "Yes") {
    $flottielje = "Y";
  } else {
    $flottielje = "N";
  }
  if($_POST['groceries'] == "Yes") {
    $groceries = "Y";
  } else {
    $groceries = "N";
  }
  if($_POST['transfer'] == "Yes") {
    $transfer = "Y";
  } else {
    $transfer = "N";
  }
  if($_POST['insurence'] == "Yes") {
    $insurence = "Y";
  } else {
    $insurence = "N";
  }
  if($_POST['childLifejackets'] == "Yes") {
    $childLifejackets = "Y";
  } else {
    $childLifejackets = "N";
  }
  if($_POST['fishinggear'] == "Yes") {
    $fishinggear = "Y";
  } else {
    $fishinggear = "N";
  }
  if($_POST['paddleboard'] == "Yes") {
    $paddleboard = "Y";
  } else {
    $paddleboard = "N";
  }
  if($_POST['terms'] == "Yes") {
    $aggreedToTerms = "Y";
  } else {
    $aggreedToTerms = "N";
  }

  $query = $mysqli->prepare("INSERT INTO bookings (`Customers_customerID`, `Yachts_yachtID`, `status`, `paymentStatus`, `paymentPreference`, `date_start`, `date_end`, `catering`, `skipper`, `flottielje`, `groceries`, `transfer`, `insurence`, `childLifejackets`, `fishinggear`, `paddleboard`, `aggreedToTerms`) VALUES ($CID, 1, '$status', '$paymentstatus', '$paymentPrefrence', '$dates', '$datee', '$catering', '$skipper', '$flottielje', '$groceries', '$transfer', '$insurence', '$childLifejackets', '$fishinggear', '$paddleboard', '$aggreedToTerms')");
  $query->execute();

  echo 'Succesfully reserved';

}

?>
