<?php
include "include/connect.php";
$sql = "SELECT * FROM `goods`";
$result = mysqli_query($db, $sql);
include "include/calc_sum.php";
$username = json_decode($_COOKIE['user']);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Catalog</title>
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
<div class="container">
    <div class="top">
        <div class="tocart">
            <p class="cartText"><?= $username[0] ?></p>
            <?php
            if ($username[0] == null) {
                include "include/form.php";
            } else {
                include "include/form1.php";
            }
            ?>
            <a href="pages/cart.php">
                <button class="cart">Your cart <br/><span class="sum"><?= $sum ?></span></button>
            </a>
        </div>
    </div>
    <div class="content">
        <h1 class="title">Catalog</h1>
        <div class="album">
            <?php
            foreach ($result as $name): ?>
                <div class="border">
                    <a rel="gallery" class="pic"
                       href="pages/single.php?id=<?= $name['id'] ?>">
                        <img alt="pic" src="img/small/<?= $name['pic'] ?>" width="120"/>
                    </a>
                    <div class="price-buy">
                        <p class="price">$<?= $name['price'] ?></p>
                        <button class="buy" data-id_good="<?= $name['id'] ?>">Купить</button>
                    </div>
                </div>
                <br>
            <? endforeach; ?>
        </div>
        <script src="js/buy-click.js"></script>
    </div>
</div>
</body>
</html>