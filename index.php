<?php
    
    if (isset($_POST['add_to_cart'])) {
        $link=mysqli_connect("db_mysql","root","","CuisineHub");
        $cart_item_id = $_POST['cart_item_id'];
        $user=$_SESSION['user_id'];
        $q="select * from panier";
        $r=mysqli_query($link,$q);
        if (mysqli_num_rows($r)==0){
            $q="insert into panier values (1, '$user', '$cart_item_id')";
            $r=mysqli_query($link,$q);
        }else{
            $q="select max(id_panier) from panier";
            $r=mysqli_query($link,$q);
            $row = mysqli_fetch_array($r);
            $max_id_panier = $row[0];
            $q="insert into panier values ('$max_id_panier'+1, '$user', '$cart_item_id')";
            $r=mysqli_query($link,$q);
        }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style.css">
    <title>CuisineHub</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
    <?php
    session_start();
    ?>
<!-----------------------space------------------------------>
<div id="space"></div>
<!----------------------------------------------------------> 
<nav>
  <ul>
  <li><a href="index.php">CuisineHub</a></li>
    <li><a href="#prop">À propos</a></li>
    <li><a href="#menu">Menu</a></li>
    <?php if (isset($_SESSION['user_id'])): ?>
        <li><a href="reservation.php">Réservations</a></li>
        <li><a href="panier.php">Panier</a></li>
        <li><a href="commande.php">Commande</a></li>
        <?php else: ?>
        <li><a href="connexion.php">Réservations</a></li>
        <?php endif; ?>
    <?php if (isset($_SESSION['user_id'])): ?>
        <li><a href="contact.php">Contact</a></li>
    <?php else: ?>
        <li><a href="connexion.php">Contact</a></li>
    <?php endif; ?>
    <?php if (isset($_SESSION['user_id'])): ?>
            <li style="float:right"><a href="logout.php"><?php echo $_SESSION['nom']."/";?>Déconnexion</a></li>
        <?php else: ?>
            <li style="float:right"><a href="connexion.php"> S'inscrire/Se connecter</a></li>
        <?php endif; ?>
  </ul>
</nav>
<!---------------------welcome------------------------------->
<div id="welcome">
    <h1>WELCOME TO OUR RESTAURANT</h1>
    <p>We're delighted to have you here</p>
</div>
<!----------------------------------------------------------->
<!--------------------a propos------------------------------->
<div id="prop">
    <h2>À propos</h2>
    <p> Le restaurant CuisineHub offre une expérience culinaire exceptionnelle
        dans un cadre chaleureux et accueillant. Notre équipe de chefs talentueux 
        met tout en œuvre pour créer des plats savoureux, préparés avec des ingrédients 
        frais et de qualité. Que vous soyez à la recherche d'un déjeuner rapide, 
        d'un dîner romantique ou d'une célébration spéciale, notre menu diversifié 
        saura satisfaire tous les palais. Nous nous engageons à offrir un service 
        attentif et professionnel, veillant à ce que chaque client se sente bien pris en charge. 
        Venez découvrir une cuisine exquise, une ambiance conviviale et des moments mémorables 
        au restaurant CuisineHub.
    </p>
</div>
<!----------------------------------------------------------->
<!-----------------------space------------------------------>
<div id="space"></div>
<!----------------------------------------------------------> 
<!-------------------menu------------------------------------>
    <div id="menu">
        <div id="art">
            <div dir="ph">
                <img src="./images/pizza.jpg" alt="">
            </div>
            <div id="dis">
                <h3>pizza</h3>
                <form method="post" >
                <input type="hidden" name="cart_item_id" value="1">
                <button type="submit" class="cart-button" name="add_to_cart">
                <img id="cart" src="./images/add-to-cart.png" alt="">
            </button>
        </form>
            </div>
        </div>
        <div id="art">
            <div dir="ph">
                <img src="./images/pasta.jpg" alt="">
            </div>
            <div id="dis">
                <h3>pasta</h3>
                <form method="post" >
                <input type="hidden" name="cart_item_id" value="2">
                <button type="submit" class="cart-button" name="add_to_cart">
                <img id="cart" src="./images/add-to-cart.png" alt="">
                </button>
        </form>
            </div>
        </div>
        <div id="art">
            <div dir="ph">
                <img src="./images/wings.jpg" alt="">
            </div>
            <div id="dis">
                <h3>chiken wings</h3>
                <form method="post" >
                <input type="hidden" name="cart_item_id" value="3">
                <button type="submit" class="cart-button" name="add_to_cart">
                <img id="cart" src="./images/add-to-cart.png" alt="">
            </button>
        </form>
            </div>
        </div>
        <div id="art">
            <div dir="ph">
                <img src="./images/nuggets.jpg" alt="">
            </div>
            <div id="dis">
                <h3>nuggets</h3>
                <form method="post" >
                <input type="hidden" name="cart_item_id" value="4">
                <button type="submit" class="cart-button" name="add_to_cart">
                <img id="cart" src="./images/add-to-cart.png" alt="">
            </button>
        </form>
            </div>
        </div>
        <div id="art">
            <div dir="ph">
                <img src="./images/soda.jpg" alt="">
            </div>
            <div id="dis">
                <h3>soda</h3>
                <form method="post" >
                <input type="hidden" name="cart_item_id" value="5">
                <button type="submit" class="cart-button" name="add_to_cart">
                <img id="cart" src="./images/add-to-cart.png" alt="">
            </button>
        </form>
            </div>
        </div>
        <div id="art">
            <div dir="ph">
                <img src="./images/jus.jpeg" alt="">
            </div>
            <div id="dis">
                <h3>jus</h3>
                <form method="post" >
                <input type="hidden" name="cart_item_id" value="6">
                <button type="submit" class="cart-button" name="add_to_cart">
                <img id="cart" src="./images/add-to-cart.png" alt="">
            </button>
        </form>
            </div>
        </div>
        <div id="art">
            <div dir="ph">
                <img src="./images/whater.jpg" alt="">
            </div>
            <div id="dis">
                <h3>whater bottel</h3>
                <form method="post" >
                <input type="hidden" name="cart_item_id" value="7">
                <button type="submit" class="cart-button" name="add_to_cart">
                <img id="cart" src="./images/add-to-cart.png" alt="">
            </button>
        </form>
            </div>
        </div>
        <div id="art">
            <div dir="ph">
                <img src="./images/sauce.webp" alt="">
            </div>
            <div id="dis">
                <h3>extra sauce</h3>
                <form method="post" >
                <input type="hidden" name="cart_item_id" value="8">
                <button type="submit" class="cart-button" name="add_to_cart">
                <img id="cart" src="./images/add-to-cart.png" alt="">
            </button>
        </form>
            </div>
        </div>

    </div> 
    <!---------------------------------------------------------->

</body>
</html>