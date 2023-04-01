<?php
session_start();

    include("connection.php");
    include("functions.php");

    if($_SERVER['REQUEST_METHOD'] == "POST")
    {

        $user_name = $_POST['user_name'];
        $password = $_POST['password'];

        if(!empty($user_name) && !empty($password) && !is_numeric($user_name))
        {
            $user_id = random_num(20);
            $query = "insert into user (user_id,user_name,password) values('$user_id','$user_name','$password')";

            mysqli_query($con,$query);

            header("Location: login.php");
            die;
        }
        else
        {
            echo "Please enter a valid information!";
        }
    }
    
?>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="n2.css">
    <!-- f1 --><link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@700&family=Rubik:wght@300&family=Source+Sans+Pro&display=swap" rel="stylesheet">
<!-- f1 -->
</head>
<body>
    <div class="bm">
        <img src="log.png" class="lo">
        <div class="bc">
            <h2 class="h">Signup Page</h2>
            <i class="fa-solid  fa-3x fa-address-book"></i>
            <form method="post">
            <input type="text" name ="user_name" placeholder="Username" class="in"><br>
            <input type="password" name="password" placeholder= "Password" class="in">
            <p class="p">Forget password ?</p>
           <button type= "submit" value="Signup" class="btn">SIGN UP</button>
       </form>
            <p class="p2">Have a account ? <a href="login.php">Login now</a></p>
    
    
        </div>
    </div>
</body>
</html>