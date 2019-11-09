<?php
$reg_form = $_POST['reg_form'];
$new_user = $_POST['new_name'];
$new_pass1 = $_POST['new_pass1'];
$new_pass2 = $_POST['new_pass2'];
$new_tel = $_POST['new_tel'];
?>

<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Register</title>
  <link rel="stylesheet" type="text/css" href="../style.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
<div class="container-adm">
  <div class="top">
    <div class="tocart">
      <p class="cartText">Welcome To Registration!</p>
    </div>
  </div>
  <div class="content-adm">
    <form name="reg_form" action="../handler/authorization.php" method="post">
      <input id="new_name" name="new_name" type="text" placeholder="type Your name"><br/>
      <input id="new_pass1" name="new_pass" type="password" placeholder="type Your pass"><br/>
      <input id="new_pass2" name="new_pass" type="password" placeholder="confirm Your pass"><br/>
      <input id="new_tel" name="new_tel" type="number" placeholder="type Your phone">
      <p>make sure that the data you entered is correct</p>
      <button type="submit" id="send_reg" name="send_reg" value="send_reg">Confirm</button>
    </form>
    <!--    <script src="../js/register.js"></script>-->
  </div>
</div>
</body>
</html>
