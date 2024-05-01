<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./error.css">
</head>
<body>
    <?php
    session_start();
    $link=mysqli_connect("db_mysql","root","","CuisineHub");
    $user=$_SESSION['user_id'];
    $q="select * from panier where '$user'=`id_client`";
    $r=mysqli_query($link,$q);
    if (mysqli_num_rows($r)==0)
    echo "<h1>Aucun plat au panier</h1>";
    else{ 
        echo "<form method='POST'>";
        echo "<table>";
        while ($row=mysqli_fetch_array($r)){
            $num=$row['id_produit'];
            $q = "select * from plats where `id_plat`='$num'";
            $v = mysqli_query($link,$q);
            $row1 = mysqli_fetch_array($v);
            echo "<tr>";
            echo "<td><input type='checkbox' name='plats[]' value='" . $row1['description_plat'] . "'></td>";
            echo "<td>" . $row1['description_plat'] . "</td>";
            echo "<td>" . $row1['prix'] . "</td>";
            echo "</tr>";
        }
        echo "</table>";
        echo "<div>";
        echo "<input id='b1' type='submit' name='valider' value='Valider les produits'>"; 
        echo "<input id='b1' type='reset' value='Réinitialiser'>";
        echo "</div>" ;
        echo "</form>";
    }
    if (isset($_POST['valider'])) {
        $user = $_SESSION['user_id'];
        $plats = $_POST['plats'];
        $prod = implode(",", $plats);
        $som = "SELECT SUM(prix) FROM plats WHERE id_plat IN (SELECT id_produit FROM panier WHERE id_client = '$user')";
        $r = mysqli_query($link, $som);
        $s = mysqli_fetch_array($r);
        $som = $s[0];
        
        $q = "SELECT MAX(id_commande) FROM commande";
        $r = mysqli_query($link, $q);
        $row = mysqli_fetch_array($r);
        $commande_id = $row[0] + 1;

        $q = "INSERT INTO commande (id_commande, id_client, les_plats, montant) VALUES ('$commande_id', '$user', '$prod', '$som')";
        mysqli_query($link, $q);


        $q = "DELETE FROM panier WHERE id_client = '$user' AND id_produit IN (SELECT id_plat FROM plats WHERE description_plat IN ('" . implode("','", $plats) . "'))";
        mysqli_query($link, $q);
        header("Location: panier.php");
       // echo "Les produits ont été ajoutés à la commande avec succès.";
    }
    
      //  echo "Aucun produit sélectionné.";
    ?>
    <br>
    <a href="index.php">retourner à la page d'accueil</a>
</body>
</html>