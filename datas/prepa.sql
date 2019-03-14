# basic SELECT from nuancesdephp's tables
SELECT * FROM article;
SELECT * FROM categorie;
SELECT * FROM permission;
SELECT * FROM user;


-- récupèrer la categorie en fonction de l'id

select thetitle from categorie where idcategorie=1;

-- récupère tous les articles de cette catégorie

select DISTINCT article.thetitle from article,categorie,categorie_has_article 
where 
categorie_has_article.categorie_idcategorie = 1 
and 
article.idarticle=categorie_has_article.article_idarticle;