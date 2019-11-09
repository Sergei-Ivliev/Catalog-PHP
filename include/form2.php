<?php
$username = json_decode($_COOKIE['user']);
$content = '
<div id="modal_form">
  <span id="modal_close">X</span>
  <div class="reg">
    <form class="form" action="order.php" method="post">
      <input id="name" name="user_name" type="text" placeholder="Your name">
      <input id="tel" name="user_tel" type="number" placeholder="Your phone">
      <button id="send">Confirm</button>
    </form>
  </div>
</div>
<div id="overlay"></div>';

echo $content;

