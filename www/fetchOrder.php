<?php


if(isset($_GET['idprod'])) {

    include 'inc/sql.php';

    $carte=$pdo->prepare('SELECT * FROM table_product WHERE id_product = ?');

    $carte->execute([$_GET['idprod']]);

    $product=$carte->fetch();

    echo json_encode($product);

}else echo 'nada';

