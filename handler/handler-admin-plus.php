<?php
$db = @mysqli_connect('localhost', 'root', '', 'new_db') or die('Error' . mysqli_connect_error());
$session_plus = mysqli_real_escape_string($db, $_POST['session_plus']);
$id_plus = (int)$_POST['id_plus'];

mysqli_query($db, "UPDATE `cart` SET `quantity`= `quantity` +1, `stotal` = `stotal` + `price` WHERE `id_session` = '$session_plus' AND `id_good` = $id_plus");

$sql1 = mysqli_query($db, "SELECT `quantity` FROM `cart` WHERE `id_session` = '$session_plus' AND `id_good` = $id_plus");
$row3 = mysqli_fetch_assoc($sql1);
$quantity = $row3['quantity'];

$sql2 = mysqli_query($db, "SELECT `stotal` FROM `cart` WHERE `id_session` = '$session_plus' AND `id_good` = $id_plus");
$row3 = mysqli_fetch_assoc($sql2);
$stotal = $row3['stotal'];

$sql3 = mysqli_query($db, "SELECT SUM(`stotal`) FROM `cart` WHERE `id_session` = '$session_plus'");
$row3 = mysqli_fetch_assoc($sql3);
$total = $row3['SUM(`stotal`)'];


echo json_encode(array('answer1' => $quantity, 'answer2' => $stotal, 'answer3' => $total));