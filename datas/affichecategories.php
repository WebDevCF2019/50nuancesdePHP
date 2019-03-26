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
<pre>
<?php
var_dump($result);
?>
 ?>
</pre>
</body>
</html>