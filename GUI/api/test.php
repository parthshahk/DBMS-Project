<?php
    $con = mysqli_connect("localhost","parth","parth","moviedb");

    $sql = "select * from people";

    $result = mysqli_query($con, $sql);
    $rows = array();
    while($r = mysqli_fetch_assoc($result)) {
        $rows[] = $r;
    }
    print json_encode($rows);
?>