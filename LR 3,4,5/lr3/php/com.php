<?php
require_once('connect.php');

$name = $_POST['name'];
$id = $_POST['id'];
$text = $_POST['text'];
$today = date(`m.d.y`);

$sql = "INSERT INTO com (`com_name`, `com_date`, `com_text`, `game_id`) VALUES ('$name','$today', '$text', '$id')";
mysqli_query($conn, $sql);
