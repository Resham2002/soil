<?php
include 'header.php';
?>
<body>
<link rel="stylesheet" href="style.css">
<img class="bg" src="bg.png" alt="farm">
  <h1>Farmers Stock</h1>
   <form action="search.php" method="POST">
        <input type="text" name="search" placeholder="search">
        <button type="submit" name="submit-search">Search</button> 
   </form>
   <h1></h1>
   
   <div class="article-container">
       <?php
       $sql = " SELECT * FROM article";
       $result = mysqli_query($conn, $sql);
       $queryResults = mysqli_num_rows($result);
       
       
       ?>
            
       </body>
</html>
