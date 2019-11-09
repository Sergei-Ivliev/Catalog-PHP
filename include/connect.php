<?php
session_start();
$ids = session_id();
$db = @mysqli_connect('localhost', 'root', '', 'new-db') or die('Error' . mysqli_connect_error());
