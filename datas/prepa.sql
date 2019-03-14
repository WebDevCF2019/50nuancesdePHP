# basic SELECT from nuancesdephp's tables
SELECT * FROM article;
SELECT * FROM categorie;
SELECT * FROM permission;
SELECT * FROM user;

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