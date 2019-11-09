<?php
$db = @mysqli_connect('localhost', 'root', '', 'new_db') or die('Error' . mysqli_connect_error());
$sql1 = mysqli_query($db, "SELECT * FROM `the_order` WHERE `status` = false");
$username = json_decode($_COOKIE['user']);
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Admin</title>
  <link rel="stylesheet" type="text/css" href="../style.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
<div class="container-adm">
  <div class="top">
    <div class="tocart">
      <p class="cartText"><?= $username[0] ?></p>
      <form action="../handler/authorization.php" method="post">
        <button type="submit" class="exit" name="logout" value="exit">EXIT</button>
      </form>
    </div>
  </div>
  <a href="../index.php"></a>
  <div class="content-adm">
    <?php
    foreach ($sql1 as $value): ?>
      <div class="full-order">
        <div class="order-head">
          <div class="order-head-left">
            <h3>ORDER: <?= $value['date'] . '/' . $value['id'] ?></h3>
            <p class="adm-text">Session id: <span class="adm-span"><?= $value['id_session'] ?></span></p>
            <p class="adm-text">Name: <span class="adm-span"><?= $value['client'] ?></span></p>
            <p class="adm-text">Phone number: <span class="adm-span"><?= $value['phone_num'] ?></span></p>
          </div>
          <div class="order-head-right">
            <button class="adm-process" data-session="<?= $value['id_session'] ?>">Process the order</button>
            <br/>
            <div class="processed">The Order Is Processed.</div>
          </div>
        </div>
        <div class="order-content">
          <?php
          $sql2 = mysqli_query($db, "SELECT * FROM `cart` WHERE `id_session` = '$value[id_session]'");
          $sql3 = mysqli_query($db, "SELECT SUM(`stotal`) FROM `cart` WHERE `id_session` = '$value[id_session]'");
          $row = mysqli_fetch_assoc($sql3);
          $total = $row['SUM(`stotal`)'];
          foreach ($sql2 as $item): ?>
            <div class="adm-item-block">
              <div class="adm-item-block-left">
                <p class="adm-text"># <span class="adm-span"><?= $item['#'] ?></span></p>
                <p class="adm-text">id_good: <span class="adm-span adm-id"><?= $item['id_good'] ?></span></p>
                <p class="adm-text">price: <span class="adm-span adm-price"><?= $item['price'] ?></span></p>
                <p class="adm-text">quantity: <span class="adm-span adm-quantity"><?= $item['quantity'] ?></span></p>
                <p class="adm-text">subtotal: <span class="adm-span adm-stotal"><?= $item['stotal'] ?></span></p>
                <p class="adm-text">name: <span class="adm-span adm-name"><?= $item['name'] ?></span></p>
              </div>
              <div class="adm-item-block-right">
                <button class="adm-del" data-id_good=<?= $item['id_good'] ?>,
                        data-id_session="<?= $value['id_session'] ?>">Del item
                  № <?= $item['#'] ?></button>
                <br/>
                <span class="adm-span">Item№ <?= $item['#'] ?></span>
                <br/>
                <div class="adm-plus-minus">
                  <button class="adm-plus" data-id_good=<?= $item['id_good'] ?>,
                          data-id_session="<?= $value['id_session'] ?>">+1
                  </button>
                  <button class="adm-minus" data-id_good=<?= $item['id_good'] ?>,
                          data-id_session="<?= $value['id_session'] ?>">-1
                  </button>
                </div>
              </div>
            </div>
          <? endforeach; ?>
          <div class="adm-total">
            TOTAL PRICE: $ <span class="item-block-total"><?= $total ?></span>
          </div>
        </div>
      </div>
    <? endforeach; ?>
  </div>
</div>
<script src="../js/admin.js"></script>
