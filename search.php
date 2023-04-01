<?php
include 'header.php';
?>

<h1>Farmers stock</h1>

<div class="article-container">
<?php
     if (isset($_POST['submit-search'])) {
         $search = mysqli_real_escape_string($conn, $_POST['search']);
         $sql = "SELECT * FROM article WHERE a_tittle LIKE '%$search%' OR a_text LIKE '%$search%'";
         $result = mysqli_query($conn, $sql);
         $queryResult = mysqli_num_rows($result);

         if ($queryResult > 0){
        while ($row = mysqli_fetch_assoc($result)){
            echo "<div class='article-box'>
            <h3>".$row['a_tittle']."</h3>
            <p>".$row['a_text']."</p>
            </div>";
        }
         } else {
             echo "There are no results matching your search!";
    
         }
     }
?>
</div>
