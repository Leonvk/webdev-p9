<?php
function selectYachts()
{
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "coralyachts";

// Create connection
    $mysqli = new mysqli("localhost", "root", "", "coralyachts");

// Check connection
    if ($mysqli->connect_error) {
        die("Connection failed: " . $mysqli->connect_error);
    }


// Select yachts + yachttypes via Join
    $sql = "SELECT *
FROM yachts
INNER JOIN yachttypes
ON yachts.yachtID = yachttypes.yachtTypeID;";


    $result = $mysqli->query($sql);

    if ($result->num_rows > 0) {
        // output data of each row
        while ($row = $result->fetch_assoc()) {


            echo '
<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="r-best-offer-single">
                                <div class="r-best-offer-in">
                                    <div class="r-offer-img">
                                        <a class="d-inline-block" href="#"><img src="assets/images/yachtImage/' . $row["image"] . '" class="img-fluid d-block m-auto" alt=""></a>
                                    </div>
                                    <div class="r-best-offer-content">
                                        <a href="#"><b>' . $row["name"] . '</b></a>
                                        <p>Borrow <b>' . $row["gear"] . ' </b>Now!</p>
                                        <ul class="pl-0 mb-0">
                                            <li><i class="fa fa-cogs"></i><span>' . $row["length"] . '</span></li>
                                            <li><i class="fa fa-beer"></i><span>' . $row["depth"] . '</span></li>
                                            <li><i class="fa fa-road"></i><span>' . $row["sail"] . '</span></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
';
        }
    } else {
        echo '
<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="r-best-offer-single">
                                <div class="r-best-offer-in">
                                    <div class="r-offer-img">
                                        <p>Geen data gevonden</p>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
';
    }


    $mysqli->close();
}

//            echo $row["yachtID"] . $row["Yachttypes_yachtTypeID"] . $row["Ports_portID"] . $row["status"] . $row["name"] . $row["code"] . $row["image"];
?>

