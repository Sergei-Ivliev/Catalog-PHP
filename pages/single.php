<?php
include "../include/connect.php";
$id = (int)$_GET['id'];
$sql = "SELECT * FROM `goods` WHERE id={$id}";
$result = mysqli_query($db, $sql);
include "../include/calc_sum.php";
$username = json_decode($_COOKIE['user']);
?>

<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Single</title>
  <link rel="stylesheet" type="text/css" href="../style.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
<div class="container">
  <div class="top">
    <div class="tocart">
      <p class="cartText"><?= $username[0] ?></p>
      <?php
      if ($username[0] == null) {
        include "../include/form.php";
      }else {
        include "../include/form1.php";
      }
      ?>
      <a href="../index.php">
        <button class="cart">Catalog</button>
      </a>
      <a href="cart.php">
        <button class="cart">Your cart <br/><span class="sum"><?= $sum ?></span></button>
      </a>
    </div>
  </div>
  <div class="content">
    <?php
    foreach ($result as $name):; ?>
      <h1 class="title"><?= $name['name'] ?></h1>
      <a rel="gallery" class="picture" href="../index.php"><img alt="pic" src="../img/big/<?= $name['pic'] ?>"
                                                                title="Back to the Catalog" width="261"
                                                                height="279"/></a> <br>
      <p class="price">$ <?= $name['price'] ?></p>
      <p class="description"><?= $name['description'] ?></p>
      <button class="buy" data-id_good="<?= $name['id'] ?>">Купить</button>
    <? endforeach; ?>
  </div>
</div>
<script src="../js/buy-click-single.js"></script>
</body>
</html>