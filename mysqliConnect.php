<?php

require_once "config.php";

/**
 * mysqli connection
 */

    $mysqli = mysqli_connect(DB_HOST, DB_LOGIN, DB_PWD, DB_NAME, DB_PORT);

    // connexion et communication en utf8

    mysqli_set_charset($mysqli,DB_CHARSET);

