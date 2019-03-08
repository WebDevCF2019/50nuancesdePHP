<?php

//Data base
$mysqli_data="SELECT * FROM article ";

$sql_author= mysqli_query($mysqli,$mysqli_data) or die(mysqli_error($mysqli));

?>

<!DOCTYPE html>
<html>
<body>
     <head>
     <title>Author</title>
     </head>
</body>

<h1 class="author">Auteurs</h1>
<p class="nom">Nom</p>
<p class="bio">Bio</p>
<p class="list">Liste de ses nouvelles </p>


</html>
