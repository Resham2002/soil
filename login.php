<?php 

session_start();

	include("connection.php");
	include("functions.php");


	if($_SERVER['REQUEST_METHOD'] == "POST")
	{
		//something was posted
		$user_name = $_POST['user_name'];
		$password = $_POST['password'];

		if(!empty($user_name) && !empty($password) && !is_numeric($user_name))
		{

			//read from database
			$query = "select * from users where user_name = '$user_name' limit 1";
			$result = mysqli_query($con, $query);

			if($result)
			{
				if($result && mysqli_num_rows($result) > 0)
				{

					$user_data = mysqli_fetch_assoc($result);
					
					if($user_data['password'] === $password)
					{

						$_SESSION['user_id'] = $user_data['user_id'];
						header("Location: index.php");
						die;
					}
				}
			}
			
			echo "wrong username or password!";
		}else
		{
			echo "wrong username or password!";
		
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
            <h2 class="h">Login Form</h2>
            <i class="fa-solid  fa-3x fa-address-book"></i>
			<form method="post">
            <input type="text" name ="user_name" placeholder="Username" class="in"><br>
            <input type="password" name="password" placeholder= "Password" class="in">
            <p class="p">Forget password ?</p>
           <button type= "submit" value="Login" class="btn">Login</button>
       </form>
            
            <p class="p2">Don't have a account?<a href="signup.php">Signup now</a></p>
    
    
        </div>
    </div>
</body>
</html>