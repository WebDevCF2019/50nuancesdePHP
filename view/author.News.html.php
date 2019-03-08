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

<h1 class="author"></h1>

</html>
