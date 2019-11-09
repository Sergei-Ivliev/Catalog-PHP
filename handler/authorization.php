<?php
include "../include/connect.php";
$options = [
    'salt' => '%^43dt^7Y709)(*098uig(N*541d5fg6(J5%$f4R4!~%$*',
    'cost' => 12
];
$user_name = $_POST['user_name'];
$user_pass = $_POST['user_pass'];
$reg_form = $_POST['send_reg'];
$new_user = $_POST['new_name'];
$new_pass1 = $_POST['new_pass1'];
$new_pass2 = $_POST['new_pass2'];
$new_tel = $_POST['new_tel'];
$logout = $_POST['logout'];
$logout1 = $_POST['logout1'];

$hash_user = password_hash($user_pass, PASSWORD_DEFAULT, $options);
$sql2 = mysqli_query($db, "SELECT * FROM `users` WHERE `login` = '$user_name' and `pass` = '$hash_user'");
$result = mysqli_fetch_assoc($sql2);
$user = $result['login'];
$tel = $result['phone'];
$hash = $result['hash'];
$c_content = [$user, $tel, $hash];

//var_dump($result);
//var_dump($_COOKIE);
//var_dump($logout);


if ($reg_form !== null and $new_pass1 == $new_pass2) {  // new user
  $hash_user = password_hash($new_pass1, PASSWORD_DEFAULT, $options);
  $sql3 = mysqli_query($db, "INSERT INTO `users`(`login`, `pass`, `hash`, `phone`) VALUES ('$new_user', '$hash_user', 123,$new_tel)");
  $sql4 = mysqli_query($db, "SELECT * FROM `users` WHERE `login` = '$new_user' and `pass` = '$hash'");
  $result = mysqli_fetch_assoc($sql4);
  $user = $result['login'];
  $tel = $result['phone'];
  $hash = $result['hash'];
  $c_content = [$user, $tel, $hash];
  setcookie('user', json_encode($c_content), time() + 3600, '/');
  header("Location: ../index.php?");
}

if ($user == 'admin') {
  setcookie('user', json_encode($c_content), time() + 3600, '/');
  header("Location: ../pages/admin.php?");
} else if ($user == $user_name and $user != 'admin') {
  setcookie('user', json_encode($c_content), time() + 3600, '/');
  header("Location: ../index.php?");
} else if ($result == null) {
  header("Location: ../index.php?");
}

if (isset($logout['exit'])) {
  setcookie('user', null, '/');
  session_unset();
  session_regenerate_id();
  session_destroy();
  header("Location: ../index.php?");
}

// $LOGOUT1 - СДЕЛАТЬ ПЕРЕНАПРАВЛЕНИЕ С ГЛАВНОЙ СТРАНИЦЫ. СДЕЛАТЬ НОВЫЙ FORM INCLUDE ИЛИ ИНАЧЕ ПРОПИСАТЬ ПУТЬ
// ЛУЧШЕ СДЕЛАТЬ НОВЫЙ HANDLER/EXIT ЧТОБЫ НЕ ПУТАЛИСЬ УСЛОВИЯ