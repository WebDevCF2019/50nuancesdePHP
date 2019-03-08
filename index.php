<?php
/**
 * Front controller
 */

// session
session_start();

// load dependencies
require_once "config.php";

// DB mysqli connection
require_once "mysqliConnect.php";

/*
 * main's routing
 */



// public view
if(!isset($_SESSION['mySessionId'])||$_SESSION['mySessionId']!=session_id()){

    require_once "controller/publicController.php";

// admin and authors view
}else{

    require_once "controller/adminController.php";
}