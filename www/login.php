<?php



if(count($_POST) > 0) {
    include_once"inc/sql.php";
    include_once 'inc/functions.php';
    $a = trimDatasPost($_POST);

    $req2 = $pdo->prepare('SELECT * FROM table_user WHERE mail = ?  AND password = SHA1(?)');

    $req2->execute(array_values($a));

    $resultat = $req2->fetch();
    var_dump($resultat);


    if (isset($a['mail']) && isset($a['password'])) {
        $_SESSION['id_user'] = $resultat['id_user'];
        $_SESSION['lastName'] = $resultat['lastName'];
        $_SESSION['firstName'] = $resultat['firstName'];

        //header('location:index.php');
        echo "bon";
    }

    else{

        echo "bad";


    }


}

?>




//if (!isset($_POST['mail']) && !isset($_POST['password'])) {

        //$_SESSION['mail'] = $_POST['mail'];
       // $_SESSION['password'] = $_POST['password'];


        // header('location:index.php');
   // } else {
     //   echo '<body onLoad="alert(\'Membre non reconnu...\')">';
      //  echo '<meta http-equiv="refresh" content="0;URL=user.phtml">';
    //}

//}






