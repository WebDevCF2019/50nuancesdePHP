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


