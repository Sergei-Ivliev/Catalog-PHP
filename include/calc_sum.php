<?php
$sql3 = mysqli_query($db, "SELECT SUM(`quantity`) FROM `cart` WHERE `id_session` = '{$ids}'");
$row = mysqli_fetch_assoc($sql3);
$sum = $row["SUM(`quantity`)"];