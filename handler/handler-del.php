<?php
include "../include/connect.php";
$session_minus = mysqli_real_escape_string($db, $_POST['session_minus']);
$id_minus = (int)$_POST['id_minus'];
$id_del = (int)$_POST['id_del'];

$actual_id_good = null;
$actual_id_session = null;

if ($session_minus and $id_minus) {
    $actual_id_session = $session_minus;
    $actual_id_good = $id_minus;
} else {
    $actual_id_session = $ids;
    $actual_id_good = $id_del;
}
$sql1 = mysqli_query($db, "SELECT `quantity` FROM `cart` WHERE `id_good` = $actual_id_good AND `id_session` = '{$actual_id_session}'");

$row1 = mysqli_fetch_assoc($sql1);
$sum = $row1['quantity'];

$sum_new = null;
$stotal_new = null;

if ($sum > 1) {
    mysqli_query($db, "UPDATE `cart` SET `quantity` = `quantity` - 1, `stotal` = `stotal` - `price` 
WHERE `id_good`= $actual_id_good AND `id_session` = '{$actual_id_session}'");
    $sql2 = mysqli_query($db, "SELECT `quantity`, `stotal` FROM `cart` 
WHERE `id_good`=$actual_id_good AND `id_session` = '{$actual_id_session}'");
    $row2 = mysqli_fetch_assoc($sql2);
    $sum_new = $row2['quantity'];
    $stotal_new = $row2['stotal'];
} else {
    mysqli_query($db, "DELETE FROM `cart` WHERE `id_good`= $actual_id_good AND `id_session` = '{$actual_id_session}'");
}

$sql3 = mysqli_query($db, "SELECT SUM(`stotal`) FROM `cart` WHERE `id_session` = '{$actual_id_session}'");
$row3 = mysqli_fetch_assoc($sql3);
$total = $row3['SUM(`stotal`)'];
echo json_encode(array('answer1' => $sum, 'answer2' => $total, 'answer3' => $sum_new, 'answer4' => $stotal_new));