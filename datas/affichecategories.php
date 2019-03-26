<?php
require_once "../config.php";
require_once "../mysqliConnect.php";

$sql_de_fou="SELECT categorie.idcategorie,categorie.thetitle, 
	   GROUP_CONCAT(article.idarticle) AS idarticle, 
       GROUP_CONCAT(article.thetitle SEPARATOR '|||') AS articleTitle,
       GROUP_CONCAT(user.iduser) AS iduser, GROUP_CONCAT(user.thelogin SEPARATOR'|||') AS thelogin,
       GROUP_CONCAT(permission.idpermission) AS idpermission, GROUP_CONCAT(permission.thename SEPARATOR'|||') AS thenamePerm,
       GROUP_CONCAT(images.theurl SEPARATOR'|||') AS theurl
       
FROM categorie
	LEFT JOIN categorie_has_article
		ON categorie.idcategorie = categorie_has_article.categorie_idcategorie
    LEFT JOIN article
		ON article.idarticle = categorie_has_article.article_idarticle
    LEFT JOIN user    
		ON user.iduser = article.user_iduser
    LEFT JOIN permission
		ON user.permission_idpermission = permission.idpermission
    LEFT JOIN images
		ON user.iduser = images.user_iduser
GROUP BY categorie.idcategorie        
    ;";

$requete = mysqli_query($mysqli,$sql_de_fou);

$result = mysqli_fetch_all($requete,MYSQLI_ASSOC);


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Jointures de fou avec group_concat et group by (exemple, à ne pas faire!)</title>
</head>
<body>
<h1>Jointures de fou avec group_concat et group by (exemple, à ne pas faire!)</h1>
<h2>On part de categorie pour prendre tous les articles et toutes les tables de la db, en restant cohérent!</h2>
<div id="content">
    <?php
    // tant qu'on a des catégories
    foreach($result as $item) {

        // on divise en élément de tableau les données venant d'un GROUP_CONCAT
        $idarticle = explode("," ,$item['idarticle']);
        $articleTitle = explode("|||" ,$item['articleTitle']);
        $iduser = explode("," ,$item['iduser']);
        $thelogin = explode("|||" ,$item['thelogin']);
        $idpermission = explode("," ,$item['idpermission']);
        $thename = explode("|||" ,$item['thenamePerm']);
        $theurl = explode("|||" ,$item['theurl']);


        ?>
        <hr><h3>ID: <?= $item['idcategorie'] ?> | <?= $item['thetitle'] ?></h3><hr>
        <?php
        //var_dump($idarticle);
        if(empty($idarticle[0])){

            ?>
            <h4>Pas d'article dans cette catégorie</h4>
            <?php
        }else{

        foreach($idarticle as $k => $value) {

            ?>
            <h4>ID: <?= $value ?> TITRE: <?= $articleTitle[$k] ?> </h4>
            <h5>ID: <?= $iduser[$k] ?> LOGIN: <?= $thelogin[$k] ?> <img src='<?= $theurl[$k] ?>'
                                                                        alt='<?= $thelogin[$k] ?>' width="50px"
                                                                        height="50px"></h5>
            <h5>ID: <?= $idpermission[$k] ?> PERMISSION: <?= $thename[$k] ?></h5>
            <hr>
            <?php
        }
        }
    }
    ?>
</div>
<pre>
<?php
var_dump($result);
?>
 ?>
</pre>
</body>
</html>