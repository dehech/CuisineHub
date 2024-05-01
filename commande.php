<?php
 session_start();
 $link=mysqli_connect("db_mysql","root","","CuisineHub");
 $client=$_SESSION['user_id'];
 $q = "SELECT `id_commande`, `les_plats`, `montant` FROM commande WHERE `id_client`='$client'";
 $r=mysqli_query($link,$q);
 if (mysqli_num_rows($r)==0)
    echo "Aucune commande enregistrée";
 else{ 
    echo "<table border='1'>";
    echo "<tr><th>Plat</th><th>Montant</th></tr>";

    while ($row = mysqli_fetch_assoc($r)) {
        $commande_id = $row['id_commande'];
        $plat = $row['les_plats'];
        $montant = $row['montant'];
        echo "<tr><td>$plat</td><td>$montant</td><td><a class='annuler' href='?commande_id=$commande_id'>Annuler</a></td>";
    }

    echo "</table>";

    if (isset($_GET['commande_id'])) {
        $commande_id = $_GET['commande_id'];
    
        // Supprimer la commande de la table "commande"
        $q = "DELETE FROM commande WHERE id_commande = '$commande_id'";
        mysqli_query($link, $q);
        header("Location: commande.php");
    
        /* Supprimer les produits de la commande de la table "panier" (si nécessaire)
        $q = "DELETE FROM panier WHERE id_produit IN (SELECT id_plat FROM plats WHERE id_commande = '$commande_id')";
        mysqli_query($link, $q);*/
    
        echo "La commande a été annulée avec succès.";
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Commandes</title>
    <link rel="stylesheet" href="./error.css">
</head>
<body>    
<br>
    <a href="index.php">retourner à la page d'accueil</a>
</body>
</html>
