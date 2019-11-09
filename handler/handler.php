<?php
include "../include/connect.php";
$id_good = (int)$_POST['id_good'];
$sql1 = mysqli_query($db, "SELECT * FROM `goods` WHERE `id` = $id_good");
$sql2 = mysqli_query($db, "SELECT * FROM `cart` WHERE (`id_good` = $id_good AND `id_session` = '{$ids}')");

if (!mysqli_fetch_array($sql2)) {
    foreach ($sql1 as $item) {
        mysqli_query($db, "INSERT INTO `cart`(`id_session`, `id_good`, `pic`, `price`, `quantity`, `name`) VALUES ('{$ids}', $id_good, '{$item['pic']}', {$item['price']}, '1', '{$item['name']}')");
    }
} else {
    mysqli_query($db, "UPDATE `cart` SET `quantity` = `quantity` + 1 WHERE `id_good`= $id_good AND `id_session` = '{$ids}'");
}

$sql3 = mysqli_query($db, "SELECT SUM(`quantity`) FROM `cart` WHERE 1 AND `id_session` = '{$ids}'");
$row = mysqli_fetch_assoc($sql3);
$sum = $row["SUM(`quantity`)"];

echo json_encode($sum);