# basic SELECT from nuancesdephp's tables
SELECT * FROM article;
SELECT * FROM categorie;
SELECT * FROM permission;
SELECT * FROM user;
<<<<<<< HEAD
SELECT categorie.thetitle, article.thetitle, thedate, user.thename, left(thetext, 350) FROM article join categorie_has_article cha on article.idarticle= cha.article_idarticle join categorie on idcategorie= cha.categorie_idcategorie join user on user.iduser=article.user_iduser order by thedate desc;
=======

<<<<<<< HEAD
SELECT categorie.thetitle, article.thetitle, thedate, user.thename, left(thetext, 350) 
FROM article 
join categorie_has_article cha 
on article.idarticle= cha.article_idarticle 
join categorie on idcategorie= cha.categorie_idcategorie 
join user on user.iduser=article.user_iduser order by thedate desc;
>>>>>>> 8d9c6bca53c23412d5a862a06444ee7105db555d


SELECT a.idarticle, a.thetitle, left(a.thetext,350) AS thetext, a.thedate,
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
<<<<<<< HEAD
    ORDER BY a.thedate DESC;

=======
    GROUP BY a.idarticle    
    ORDER BY a.thedate DESC;
>>>>>>> 4677dedd76e3a12fc4e4095f70d89763e2cff306
