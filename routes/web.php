<?php
$action = filter_input(INPUT_GET, "action", FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_BACKTICK);
//include 'config/database.php';
$route = [
    null => 'app/controllers/homeController.php',

];
include 'resources/views/layouts/header.php';
if (isset($route[$action])) {

    include $route[$action];

} else {

    include 'resources/views/errors/404.php';


}
include 'resources/views/layouts/footer.php';