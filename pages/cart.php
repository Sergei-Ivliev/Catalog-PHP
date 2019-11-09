<?php
include "../include/connect.php";
$sql2 = mysqli_query($db, "UPDATE `cart` SET `stotal` = `price` * `quantity` WHERE `id_session` = '{$ids}'");
$sql1 = mysqli_query($db, "SELECT * FROM `cart` WHERE `id_session` = '$ids'");
$sql3 = mysqli_query($db, "SELECT SUM(`stotal`) FROM `cart` WHERE `id_session` = '{$ids}'");
$row = mysqli_fetch_assoc($sql3);
$total = $row['SUM(`stotal`)'];
$username = json_decode($_COOKIE['user']);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Cart</title>
    <link rel="stylesheet" type="text/css" href="../style.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
<div class="container">
    <div class="top">
        <div class="tocart">
            <?php
            if ($username[0] == null) {
                include "../include/form.php";
            } else {
                include "../include/form1.php";
            }
            ?>
            <p class="cartText" id="cartText"><?= $username[0] ?></p>
            <a href="../index.php">
                <button class="cart">Catalog</button>
            </a>
        </div>
    </div>
    <div class="content">
        <h1 class="title">The Cart</h1>
        <div class="album">
            <?php
            foreach ($sql1 as $item): ?>
                <div class="item-block">
                    <div class="item-pick">
                        <img src="../img/small/<?= $item['pic'] ?>" alt="pic" width="70" height="80"/>
                    </div>
                    <div class="item-name">
                        <p class="cartText"><?= $item['name'] ?></p>
                    </div>
                    <div class="item-price">
                        <p class="cartText">$ <?= $item['price'] ?></p>
                    </div>
                    <div class="item-quantity">
                        <p class="cartText"><span class="item-quant"><?= $item['quantity'] ?></span> pcs.</p>
                    </div>
                    <div class="item-sbtotprice">
                        <p class="cartText">$ <span class="item-stotal"><?= $item['stotal'] ?></span></p>
                    </div>
                    <div class="item-del" data-id_del="<?= $item['id_good'] ?>">
                        <img src="../img/del.png" alt="pic-del" data-id_del="<?= $item['id_good'] ?>" width="35"
                             height="35"/>
                    </div>
                </div>
            <? endforeach; ?>
            <div class="total-price">
                <p class="cartPrice">Total Price: $ <span id="total_price"><?= ($total) ?? '0' ?></span></p>
            </div>
        </div>
        <p class="confirm">make sure your order is correct and confirm your choice</p>
        <button class="order">Make The Order</button>
    </div>
</div>
<script src="../js/del-click.js"></script>
        <?php
        include "../include/form2.php";
        include "../include/order.php";
        ?>

<!--<script src="../js/order.js"></script>-->

</body>
</html>
<?php
//include "../include/form2.php";
//include "../include/order.php";
?>