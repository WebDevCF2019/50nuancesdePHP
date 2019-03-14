# basic SELECT from nuancesdephp's tables
SELECT * FROM article;
SELECT * FROM categorie;
SELECT * FROM permission;
SELECT * FROM user;

<<<<<<< HEAD
SELECT categorie.thetitle, article.thetitle, thedate, user.thename, left(thetext, 350) FROM article join categorie_has_article cha on article.idarticle= cha.article_idarticle join categorie on idcategorie= cha.categorie_idcategorie join user on user.iduser=article.user_iduser order by thedate desc;

=======
SELECT a.idarticle, a.thetitle, left(a.thetext,350) AS thetext, a.thedate,
		u.iduser, u.thelogin, u.thename,
        c.idcategorie, c.thetitle as titlecateg
	FROM article a 
    INNER JOIN user u
		ON u.iduser = a.user_iduser
	INNER JOIN categorie_has_article h 
		ON h.article_idarticle = a.idarticle
	INNER JOIN categorie c 
		ON h.categorie_idcategorie = c.idcategorie
    ORDER BY a.thedate DESC;
>>>>>>> 148f7dbb2e621758f7346a1595a8bd6a6e643d64
