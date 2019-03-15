# basic SELECT from nuancesdephp's tables
SELECT * FROM article;
SELECT * FROM categorie;
SELECT * FROM permission;
SELECT * FROM user ;

SELECT u.thename, u.thebio, a.thetitle, a.thetext, a.thedate
FROM article a
JOIN user u
ON u.iduser = a.user_iduser
where u.iduser = 1;




SELECT a.thetitle, a.thetext, a.thedate, u.thename 
FROM article a
JOIN user u
ON u.iduser=  a.user_iduser
WHERE u.iduser = 1;


<<<<<<< HEAD
=======
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
    GROUP BY a.idarticle    
    ORDER BY a.thedate DESC;
>>>>>>> 4677dedd76e3a12fc4e4095f70d89763e2cff306
