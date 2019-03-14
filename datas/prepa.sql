# basic SELECT from nuancesdephp's tables
SELECT * FROM article;
SELECT * FROM categorie;
SELECT * FROM permission;
SELECT * FROM user;

SELECT categorie.thetitle, article.thetitle, thedate, user.thename, left(thetext, 350) FROM article join categorie_has_article cha on article.idarticle= cha.article_idarticle join categorie on idcategorie= cha.categorie_idcategorie join user on user.iduser=article.user_iduser order by thedate desc;

