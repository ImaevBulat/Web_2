<?php

require_once('connect.php');

$kol = $_POST['kol'];
$tek = $_POST['tek'];

$result = mysqli_query($conn, "SELECT * FROM `store`");
$result = mysqli_fetch_all($result);

if (count($result) <= $tek) {
    return false;
} else {

    for ($i = $tek; $i < ($tek + $kol); $i++) {
        $games[$i] = array(
            'id' => $result[$i][0],
            'name' => $result[$i][1],
            'cats' => $result[$i][2],
            'price' => $result[$i][3],
            'photo' => $result[$i][4]
        );
    }

    echo json_encode($games);
}
