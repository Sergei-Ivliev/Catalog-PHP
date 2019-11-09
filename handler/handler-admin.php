<?php
$db = @mysqli_connect('localhost', 'root', '', 'new_db') or die('Error' . mysqli_connect_error());
$processed_session = mysqli_real_escape_string($db, $_POST['processed_session']);
$id_del = (int)$_POST['id_del'];
$id_session = mysqli_real_escape_string($db, $_POST['id_session']);
$button = mysqli_real_escape_string($db, $_POST['button']);
$sql1 = mysqli_query($db, "SELECT * FROM `cart` WHERE `id_session` = '$id_session'");

if ($processed_session) {
    mysqli_query($db, "UPDATE `the_order` SET `status`= 1 WHERE `id_session` = '$processed_session'");
}

if ($button) {
    mysqli_query($db, "DELETE FROM `cart` WHERE `id_good`= $id_del AND `id_session` = '{$id_session}'");
}

$sql3 = mysqli_query($db, "SELECT SUM(`stotal`) FROM `cart` WHERE `id_session` = '{$id_session}'");
$row3 = mysqli_fetch_assoc($sql3);
$total = $row3['SUM(`stotal`)'];

if ($total == null) {
    mysqli_query($db, "DELETE FROM `cart` WHERE `id_session` = '{$id_session}'");
    mysqli_query($db, "DELETE FROM `the_order` WHERE `id_session` = '{$id_session}'");
}

echo json_encode(array('answer2' => $total));