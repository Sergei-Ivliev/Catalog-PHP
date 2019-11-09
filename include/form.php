<?php
$content = '
<form class="enter" action = "../handler/authorization.php" method = "post" >
    <input id = "user" name = "user_name" type = "text" placeholder = "Your name" >
    <input id = "pass" name = "user_pass" type = "password" placeholder = "Your password" >
    <button id = "ok" > OK</button >
  </form >
  <form action="../pages/register.php" method="post">
    <button type="submit" class="register" name="register" value="register">Register</button>
</form>';
$content1 = '
<form class="enter" action = "handler/authorization.php" method = "post" >
    <input id = "user" name = "user_name" type = "text" placeholder = "Your name" >
    <input id = "pass" name = "user_pass" type = "password" placeholder = "Your password" >
    <button id = "ok" > OK</button >
  </form >
  <form action="pages/register.php" method="post">
    <button type="submit" class="register" name="register" value="register">Register</button>
</form>';


if (preg_match("/.+index.php/", $_SERVER['HTTP_REFERER']) == 1) {
  echo $content;
} else {
  echo $content1;
};


