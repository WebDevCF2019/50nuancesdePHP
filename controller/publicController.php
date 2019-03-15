<?php

// model
require_once "model/articleModel.php";


if(isset($_GET['idnouvelle']) && ctype_digit($_GET['idnouvelle'])) {

    $idnouvelle = (int)$_GET['idnouvelle'];
    require_once "view/detailNews.html.php";

}elseif(isset($_GET['idcateg']) && ctype_digit($_GET['idcateg'])){

    $idcateg = (int)$_GET['idcateg'];
    require_once "view/rubNews.html.php";

}elseif(isset($_GET['idauthor']) && ctype_digit($_GET['idauthor'])){
    $idauthor = (int)$_GET['idauthor'];
    require_once "view/authorNews.html.php";

/*

Accueil

*/
}else{
    // from articleModel
    $recup_accueil = listArticleAccueil($mysqli);

    // view
    require_once "view/accueilNews.html.php";
}


