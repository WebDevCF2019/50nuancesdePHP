<?php
/**
 * Created by PhpStorm.
 * User: Michael
 * Date: 14/03/2019
 * Time: 10:52
 */


function listArticleAccueil(mysqli $db){
    $datas = mysqli_query($db,"SELECT a.idarticle, a.thetitle, left(a.thetext,350) AS thetext, a.thedate,
		u.iduser, u.thelogin, u.thename,
        GROUP_CONCAT(c.idcategorie) AS  idcategorie, 
        GROUP_CONCAT(c.thetitle SEPARATOR '|||') as titlecateg
	FROM article a 
    INNER JOIN user u
		ON u.iduser = a.user_iduser
	INNER JOIN categorie_has_article h 
		ON h.article_idarticle = a.idarticle
	INNER JOIN categorie c 
		ON h.categorie_idcategorie = c.idcategorie
    GROUP BY a.idarticle    
    ORDER BY a.thedate DESC;");
}

function listArticleCategorie(mysqli $db,int $idCategorie){

}

function listArticleUser(mysqli $db,int $idUser){

}

function detailArticle(mysqli $db,int $idArticle){

}

function insertArticle(mysqli $db,array $values){

}

function updateArticle(mysqli $db,int $idArticle){

}

function deleteArticle(mysqli $db,int $idArticle){

}