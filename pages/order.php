<?php
include "../include/connect.php";
$user_name = mysqli_real_escape_string($db, $_POST['user_name']);// user first time
$user_tel = (int)$_POST['user_tel'];
$date = date('y-m-d');
$username = json_decode($_COOKIE['user']); //user repeatedly from cookie
$uname = null;
if ($user_name != null) {
  $uname = $user_name;
  $utel = $user_tel;
} else {
  $uname = $username[0];
  $utel = $username[1];
}
$sql1 = mysqli_query($db, "SELECT * FROM `cart` WHERE `id_session` = '$ids'");
$total = mysqli_query($db, "SELECT `price`,`quantity`,`price`*`quantity` AS `stotal` FROM `cart` WHERE 1 AND `id_session` = '{$ids}' ");
$sql2 = mysqli_query($db, "INSERT INTO `the_order`(`id_session`, `date`, `phone_num`, `client`) VALUES ('{$ids}', '$date', $user_tel, '{$user_name}')");
$sql3 = mysqli_query($db, "SELECT `id`, `date` FROM `the_order` WHERE `id_session` = '$ids'");

$row = mysqli_fetch_assoc($sql3);
$id = $row['id'];
$date = $row['date'];
$c_content = [$user_name, $user_tel];
if (!$_COOKIE['user']) {
  setcookie('user', json_encode($c_content), time() + 3600, '/');
}
session_regenerate_id();
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Order</title>
  <link rel="stylesheet" type="text/css" href="../style.css"/>
</head>
<body>

<div class="container">
  <div class="top">
    <div class="tocart">
      <a href="../index.php">
        <button class="cart">Catalog</button>
      </a>
    </div>
  </div>
  <div class="content">
    <h1 class="title"><?= $uname ?>!</h1>
    <h2 class="title">Your order № <?= $date . '/' . $id ?> is formed</h2>
    <div class="album">
      <?php
      foreach ($sql1 as $item): ?>
        <div class="item-block">
          <div class="item-name">
            <p class="cartText"><?= $item['name'] ?></p>
          </div>
          <div class="item-price">
            <p class="cartText">$ <?= $item['price'] ?></p>
          </div>
          <div class="item-quantity">
            <p class="cartText"><?= $item['quantity'] ?> pcs.</p>
          </div>
          <div class="item-sbtotprice">
            <p class="cartText">$ <?= $item['quantity'] * $item['price'] ?></p>
          </div>
        </div>
      <? endforeach; ?>
      <div class="total-price">
        <?php
        $total_price = 0;
        foreach ($total as $value)
          $total_price += $value['stotal'];
        ?>
        <p class="cartPrice">Total Price: $ <?= $total_price ?></p>
      </div>
    </div>
    <p class="contact">Your phone number: <?= $utel ?>. The operator will contact you shortly</p>
    <p></p>
  </div>
</div>
</body>
</html>