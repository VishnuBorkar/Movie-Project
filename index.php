<?php
ini_set('display_errors', 1);
error_reporting(E_ALL ^ E_NOTICE);
include "classes/initial.class.php";
$coreObj = new initial;
$pdoObj = new pdoDatabase;
$cntr = new controller;
if ($_POST['submit']){
    $cntr->get_content();
}
else{
    $cntr->get_header();
    $cntr->get_content();
    $cntr->get_footer();
}

