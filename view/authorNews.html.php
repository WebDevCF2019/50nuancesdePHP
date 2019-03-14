<?php

//Data base
$mysqli_data="SELECT * FROM article ";

$sql_author= mysqli_query($mysqli,$mysqli_data) or die(mysqli_error($mysqli));

if(mysqli_num_rows($sql_author)){
    $item = mysqli_fetch_assoc($sql_author);
}else{
    $error="pas d'auteurs";
}
?>

<!DOCTYPE html>
<html>

     <head>
     <title>Author</title>
     </head>

<body>

</body>

<h1 class="nom"><?=$idauthor['thename']?></h1>
<p class="bio"><?=$idauthor['thebio']?></p>

<p class="list">Liste de ses nouvelles </p>


</html>
