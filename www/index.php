<?php include_once"inc/sql.php";


$req=$pdo->query('SELECT * FROM table_product');




include_once 'LayoutView.phtml';