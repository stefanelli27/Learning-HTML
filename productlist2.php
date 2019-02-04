<?php
error_reporting(0);
session_start();
echo $_SESSION['username'];
    if(isset($_SESSION['username']) &&  $_SESSION['loggedin'] == true)
        {

?>
<?php
include("config.php");
include 'customerheader.php';
?>
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=euc-jp">
    <style>
    body{
        background-color: ;
        opacity:;
    }
    
    </style>
     
    <!links to stylesheet> 
<link rel="stylesheet" type="text/css" href="stylesheet.css">

   
    
    
     <! LINK TO cart PAGE>
    <a href="cart.php">
        
 
  
     
    <! LINK TO HOME PAGE>
     <a href="homepage.php">
        <p class = "homepage"> </p>
    </a>
    
         
    <! list of product images>
    
    <img src= "//cdn.shopify.com/s/files/1/2233/5357/products/Andrew_Zaragoza_-_Sample-9_480x.jpg?v=1521483229"
     alt ="Compression Cuff - Mark Bell - Sling Shot" class="imgpr1">
   
    <img src= "https://i2.wp.com/shawstrength.com/wp-content/uploads/2017/08/Stone-sleeves.png?fit=440%2C500&amp;ssl=1"
     alt ="Stone-sleeves" class="imgpr2">
   
    <img src= "https://i1.wp.com/shawstrength.com/wp-content/uploads/2017/08/do_training_4oz.jpg?fit=300%2C264&amp;ssl=1"
     alt ="training tacky" class="imgpr3">
   
    <img src= "https://i1.wp.com/shawstrength.com/wp-content/uploads/2017/08/do_training_16oz.jpg?fit=300%2C264&amp;ssl=1"
     alt ="500 mL training tacky" class="imgpr4">
    
    <img src= "assets/images/titan/thumbnails/thumbnails/evil_thumbnail.jpg"
     alt ="Titan Evil Twin Psycho Bench Shirt" class="imgpr5">
    
    <img src= "assets/images/titan/fury_thumbnail.jpg"
     alt ="Fury Bench Press Shirt" class="imgpr6">
    
    <img src= "assets/images/slingshot/reactive clear_thumbnail.jpg"
     alt ="Reactive Slingshot" class="imgpr7">
    
    <img src= "assets/images/spud/2plybenchbeltproseries_thumbnail.jpg"
     alt ="Spud Pro Series Bench Belt" class="imgpr8">
    
     <! add to cart buttons>
    <?php
    $results = mysqli_query($conn, "SELECT * FROM products WHERE id_product= 9 OR id_product= 10 OR id_product= 11 OR id_product= 12 OR id_product= 13 OR id_product= 14 OR id_product= 15 OR id_product= 16");
    while($row = mysqli_fetch_array($results))
    {
    ?>
         <tr>
             <br><br><br><br><br><br><br><br><br><br>
            <form method="POST" action="viewcart.php">
                <td><?php echo $row['p_quantity']?></td>
                <td><?php echo $row['p_name']?></td>
                <td><?php echo $row['p_code']?></td>
                <td><?php echo $row['p_price']?></td>
                <td><input type="text" size="8" id="qty" name="p_quantity"  required></td>
                <input type="hidden" name="id_product" value="<?php echo $row['id_product']?>"/>
                <input type="hidden" name="p_name" value="<?php echo $row['p_name']?>"/>
                <input type="hidden" name="p_price" value="<?php echo $row['p_price']?>"/>
                <input type="hidden" name="action" value="add"/>
                <td><button type="submit" name="submit" class="btn btn-primary active">Add to Cart</button></td>
                <br><br><br>
            </form>
        </tr>
    <?php
    }
    ?>        
    
        <div style="clear:both"></div>
        
        <div class="table-responsive">
            <table class="table table-bordered">
                <?php
                if(!empty($_SESSION["cart"]))
                    {
                        $total = 0;
                        foreach($_SESSION["cart"] as $keys => $values)
                            { ?>
                                <tbody>
                                    <tr>
                                        <form method="POST" action="viewcart.php">
                                            <td><?php echo $values["p_name"]; ?></td>
                                            <td><?php echo $values["p_quantity"] ?></td>
                                            <td><?php echo $values["p_price"]; ?></td>
                                            <td><?php echo number_format($values["p_quantity"] * $values["p_price"], 2); ?></td>
                                            <input type="hidden" name="id_product" value="<?php echo $values['id_product']?>"/>
                                            <input type="hidden" name="action" value="delete"/>
                                            <td><button type="submit" name="submit" class="btn btn-primary active">Remove</button></td>
                                        </form>
                                    </tr>
                                <?php 
                                    $total = $total + ($values["p_quantity"] * $values["p_price"]);
                                } ?>
                                    <tr>
                                        <td colspan="3" align="right">Total</td>
                                        <td align="right">$ <?php echo number_format($total, 2); ?></td>
                                        <td></td>
                                    </tr>
                                </tbody>
            <?php   } mysqli_close($conn); ?>
               $results = mysqli_query($conn, "SELECT * FROM products WHERE id_product= 2");
    while($row = mysqli_fetch_array($results))
    {
    ?>
        <form 
        <td><button type="submit" name="submit" class="btn btn-primary active">Add to cart</button></td>
        </form>
    
    </head>
</html>
<?php
}
else
{
print '<script>window.location.assign("login.php");</script>'; 
}
?>