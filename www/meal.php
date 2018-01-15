<?php include_once"inc/sql.php";


    $addProduct = $pdo->prepare('INSERT INTO `table_product` (`title_product`,`description`,`quantity`,`price_ht`,`price_ttc`) VALUES (?,?,?,?,?)');

   $addProduct->execute(array_values($_POST));




header('location:index.php');