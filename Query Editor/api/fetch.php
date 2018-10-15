<?php
    $con = mysqli_connect("localhost","parth","parth","moviedb");

    if($_REQUEST['q'] == ''){
        echo "false";
        exit(0);
    }else{
        $sql = $_REQUEST['q'];
    }

    $result = mysqli_query($con, $sql);
    
    if($result === true){
        echo "true";
    }else if($result === false){
        echo "false";
    }else{

        $rows = array();
        while($r = mysqli_fetch_assoc($result)) {
            $rows[] = $r;
        }
        print json_encode($rows);

    }
?>