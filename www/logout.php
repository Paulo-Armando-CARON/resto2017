<?php
/**
 * Created by PhpStorm.
 * User: wali3
 * Date: 18/01/18
 * Time: 15:28
 */
session_start();
//var_dump($_SESSION);
foreach($_SESSION as $k => $v){
    unset($_SESSION[$k]);
}
//var_dump($_SESSION);
header('location: index.php');