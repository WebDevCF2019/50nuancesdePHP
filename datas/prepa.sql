
SELECT * FROM article;
SELECT * FROM categorie;
SELECT * FROM permission;
SELECT * FROM user;

SELECT thetitle, thetext, thename, thedate, iduser, idarticle FROM article INNER JOIN user ON  user.iduser = article.idarticle;