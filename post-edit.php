<?php
    require 'header.php';


    error_reporting(E_ALL);
    ini_set('display_error','1');

    if(!empty($_POST)){
        require_once('includes/class-insert.php');
        if($insert->post($_POST)){
            echo "<p>Blog is successfully posted..</p>";
        }
    }
    

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>post edit</title>
</head>
<body>
    <form action="" method="post">
        <p>
            <input type="text" name="post_title">
        </p>
        <p>
            <textarea name="post_content"></textarea>
        </p>
        <p>
            <label for="post_category">Cat 1</label>
            <input type="checkbox" name="post_category[first]" value="cat1">
            <br>
            <label for="post_category">Cat 2</label>
            <input type="checkbox" name="post_category[second]" value="cat2">
        </p>
        <p>
            <input type="submit" value="Submit">
        </p>
    </form>
</body>
</html>