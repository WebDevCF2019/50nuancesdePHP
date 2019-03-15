<?php
/*
 *  création de la vue de l'accueil dans
 *  view/accueilNews.html.php
 *  - Bootstrap2
 */
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>accueilNews</title>
    <!-- Bootstrap core CSS -->
    <link href="view/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">


    <!-- Custom styles for this template -->
    <link href="view/css/clean-blog.min.css" rel="stylesheet">

</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
        <a class="navbar-brand" href="index.html">50nuancesPHP</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                aria-label="Toggle navigation">
            Menu
            <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.html">Accueil</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="about.html">Rubrique</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="post.html">Contact</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact.html">connexion</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Page Header -->
<header class="masthead" style="background-image: url('img/home-bg.jpg')">
    <div class="overlay"></div>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-10 mx-auto">
                <div class="site-heading">
                    <h1>AccueilNews</h1>

                </div>
            </div>
        </div>
    </div>
</header>

<!-- Main Content -->
<div class="container">
    <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">


<<<<<<< HEAD

                <?php
// pas encore d'articles, la variable contient false
if(!$recup_accueil){
    ?>
    <h3 class="text-success">Pas encore de nouvelles</h3>
                <?php
}else{
       foreach($recup_accueil as $item) {

=======
            <?php
            // pas encore d'articles, la variable contient false
            if (!$recup_accueil) {
>>>>>>> 7e1f46a22361c42cd4dd3c2e9537607c1d6b12cc
                ?>
                <h3 class="text-success">Pas encore de nouvelles</h3>
                <?php
            } else {

<<<<<<< HEAD
                    <p><a href="#">Rubriques de la nouvelle (cliquables -> rubriques)</a></p>
                    <p>Texte coupé à 350 caractères (! attention à la césure du texte)</p>
                    <p><a href="authorNews.html.php"><?=$item['thetitle'] ?></a></p>
                    <p>Date</p>
=======
                foreach ($recup_accueil as $item) {
>>>>>>> 7e1f46a22361c42cd4dd3c2e9537607c1d6b12cc

                    ?>
                    <div class="post-preview">
                        <h2 class="post-title">
                            <?= $item['thetitle'] ?>
                        </h2>

                        <p><a href="#">Rubriques de la nouvelle (cliquables -> rubriques)</a></p>
                        <p>Texte coupé à 350 caractères (! attention à la césure du texte)</p>
                        <p><a href="#">Auteur (cliquable -> détail auteur)</a></p>
                        <p>Date</p>


                    </div>
                    <?php
                }
            }
        } 
            ?>
        </div>
    </div>
</div>

<hr>

<!-- Footer -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-10 mx-auto">
                <ul class="list-inline text-center">
                    <li class="list-inline-item">
                        <a href="#">
                <span class="fa-stack fa-lg">
                  <i class="fas fa-circle fa-stack-2x"></i>
                  <i class="fab fa-twitter fa-stack-1x fa-inverse"></i>
                </span>
                        </a>
                    </li>
                    <li class="list-inline-item">
                        <a href="#">
                <span class="fa-stack fa-lg">
                  <i class="fas fa-circle fa-stack-2x"></i>
                  <i class="fab fa-facebook-f fa-stack-1x fa-inverse"></i>
                </span>
                        </a>
                    </li>
                    <li class="list-inline-item">
                        <a href="#">
                <span class="fa-stack fa-lg">
                  <i class="fas fa-circle fa-stack-2x"></i>
                  <i class="fab fa-github fa-stack-1x fa-inverse"></i>
                </span>
                        </a>
                    </li>
                </ul>
                <p class="copyright text-muted">Copyright &copy; 50nuancesPHP 2019</p>
            </div>
        </div>
    </div>
</footer>


<script src="view/js/jquery.min.js"></script>
<script src="view/js/bootstrap.bundle.min.js"></script>
</body>
</html>





