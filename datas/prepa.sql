# basic SELECT from nuancesdephp's tables
SELECT * FROM article;
SELECT * FROM categorie;
SELECT * FROM permission;
SELECT * FROM user;


-- récupèrer la categorie en fonction de l'id

select thetitle from categorie where idcategorie=1;

-- récupère tous les articles de cette catégorie

-- version join
SELECT DISTINCT article.thetitle,article.thetext,article.thedate 
FROM article
JOIN categorie
JOIN categorie_has_article 
ON categorie_has_article.categorie_idcategorie = 3 
AND article.idarticle=categorie_has_article.article_idarticle;

-- version where
select DISTINCT article.thetitle,article.thetext,article.thedate 
from article,categorie,categorie_has_article 
where categorie_has_article.categorie_idcategorie = 3 and article.idarticle=categorie_has_article.article_idarticle;