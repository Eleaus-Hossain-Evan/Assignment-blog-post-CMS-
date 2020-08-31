<?php
include('server.php');
$log="";
if(isset($_SESSION['username'])){
    $log ="Profile<ul><li><a href='index.php?logout=1' class='btn'>LogOut</a> </li></ul>";
    // include('post_manage.php');
}else{
    $log= "<a href='signup.php' class='btn'>SignUp</a><a href='login.php' class='btn'>SignIn</a>";
} 

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <title>Home</title>
</head>
<body>
    <header class="header">
        <div class="header_left">
            <h1 class="Montserrat">BLOG</h1>
        </div>
        <nav class="header_mid">
            <ul>
                <li><a href="index.php" class="active">Home</a></li>
                <li><a href="about.php">About</a></li>
                <li><a href="contactus.php">Contact Us</a></li>
                <li><a href="newblog.php">Add New Blog</a></li>
            </ul>
        </nav>
        <div class="header_right">
            <?php
                 echo $log;
            ?>
        </div>
    </header>