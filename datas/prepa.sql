# basic SELECT from nuancesdephp's tables
SELECT * FROM article;
SELECT * FROM categorie;
SELECT * FROM permission;
SELECT * FROM user ;

<<<<<<< HEAD
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
=======
# accueil - home page
>>>>>>> 4d9e79ab93c81bbdf8d5c0a08660f193f09c6434
SELECT a.idarticle, a.thetitle, left(a.thetext,350) AS thetext, a.thedate,
		u.iduser, u.thelogin, u.thename,
        GROUP_CONCAT(c.idcategorie) AS  idcategorie, 
        GROUP_CONCAT(c.thetitle SEPARATOR '|||') as titlecateg
	FROM article a 
	LEFT JOIN categorie_has_article h 
		ON h.article_idarticle = a.idarticle
	LEFT JOIN categorie c 
		ON h.categorie_idcategorie = c.idcategorie
    INNER JOIN user u
		ON u.iduser = a.user_iduser    
    GROUP BY a.idarticle    
    ORDER BY a.thedate DESC;
<<<<<<< HEAD
>>>>>>> 4677dedd76e3a12fc4e4095f70d89763e2cff306
=======
    
    
>>>>>>> 4d9e79ab93c81bbdf8d5c0a08660f193f09c6434
