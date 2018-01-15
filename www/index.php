<?php include_once"inc/sql.php";


$req=$pdo->query('SELECT `id_product`,`title_product`,`description`,`price_ttc`
FROM table_product');


include_once 'LayoutView.phtml';