# basic SELECT from nuancesdephp's tables
SELECT * FROM article;
SELECT * FROM categorie;
SELECT * FROM permission;
SELECT * FROM user;

SELECT categorie.thetitle, article.thetitle, thedate, user.thename, left(thetext, 350) FROM article join categorie_has_article cha on article.idarticle= cha.article_idarticle join categorie on idcategorie= cha.categorie_idcategorie join user on user.iduser=article.user_iduser order by thedate desc;



SELECT categorie.thetitle, article.thetitle, thedate, user.thename, left(thetext, 350) 
FROM article 
join categorie_has_article cha 
on article.idarticle= cha.article_idarticle 
join categorie on idcategorie= cha.categorie_idcategorie 
join user on user.iduser=article.user_iduser order by thedate desc;



# accueil - home page
SELECT a.idarticle, a.thetitle, left(a.thetext,350) AS thetext, a.thedate,
		u.iduser, u.thelogin, u.thename,
        GROUP_CONCAT(c.idcategorie) AS  idcategorie, 
        GROUP_CONCAT(c.thetitle SEPARATOR '|||') as titlecateg
	FROM article a 
	LEFT JOIN categorie_has_article h 
		ON h.article_idarticle = a.idarticle
	LEFT JOIN categorie c 
		ON h.categorie_idcategorie = c.idcategorie

    ORDER BY a.thedate DESC;


    GROUP BY a.idarticle    
    ORDER BY a.thedate DESC;


    INNER JOIN user u
		ON u.iduser = a.user_iduser    
    GROUP BY a.idarticle    
    ORDER BY a.thedate DESC;
    
    

