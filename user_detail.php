<?php
    $postid = $post['ID'];

    $sql = "SELECT * FROM posts WHERE ID = '$postid'";

    $result = mysqli_query($conn, $sql);
    if(mysqli_num_rows($result) == 1){
        $row = mysqli_fetch_assoc($result);
        $username = $row['post_username'];
        
        $sql="SELECT * FROM users WHERE username = '$username'";
        $result = mysqli_query($conn, $sql);
        if(mysqli_num_rows($result) == 1){
            $row = mysqli_fetch_assoc($result);
            $user = $row['username'];
            
        }
      
    }
    

?>


<div class="flex">
    <p class="DoHyeo"> Posted by </p>: 
    <h1> 
        <span class="Architects">
            <?php echo $user;?>
        </span>  
    </h1>
    
    <p class="Lemonada" id="desg"> <subscript>  <?php echo $row['designation'];?></subscript></p>
</div>
