<?php
/**
 * Created by PhpStorm.
 * User: wali3
 * Date: 15/01/18
 * Time: 16:35
 */

var_dump($_POST);
$codeErrorUpoad =['UPLOAD_ERR_OK', ' UPLOAD_ERR_INI_SIZE', ' UPLOAD_ERR_FORM_SIZE', 'UPLOAD_ERR_PARTIAL','UPLOAD_ERR_NO_FILE',
    'UPLOAD_ERR_NO_TMP_DIR','UPLOAD_ERR_CANT_WRITE','UPLOAD_ERR_EXTENSION '];
if ($_FILES["monfichier"]["error"] == UPLOAD_ERR_OK) {
    if(move_uploaded_file($_FILES["monfichier"]["tmp_name"], '../images/manger/'.$_FILES["monfichier"]['name'])){
        //ok $file
        echo 'ok';
    }else $errorMsg = 'erreur move_uploaded_file';

}else $errorMsg = $codeErrorUpoad [$_FILES["monfichier"]["error"]];
14:39
<form method="post" enctype="multipart/form-data" action="inc/upload.php">
       <p>
           <input type="hidden" name="MAX_FILE_SIZE" value="100000" />

           <input type="file" name="monfichier" />
           <input type="submit" />
       </p>
   </form>


FORM INSERTION PRODUIT
SQL:: INSERT INTO PRODUCTS
    ext= pathinfo($FILES  ['file'] ['tmp_name'])['extension'];
   si QUERY re,vpoe TRUE
   alors récupérer lastInsertID
  uploader le fichier sur serveur
   move uploader le fichier sur sreveur
   move_uploaded_file(TEMP,  lastinsertID.Extension)