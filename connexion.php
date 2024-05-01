<?php
ob_start();   
    if(isset($_POST['button2'])) {
        $link=mysqli_connect("db_mysql","root","","cuisinehub");
  /*  if ($link-> connect_error) 
        die("Connection failed: ". mysqli_connect_error());
    else{
        echo "Connected successfully";
        echo "<br>";*/
            $mail=$_POST['t2'];
            $mdp=$_POST['t3'];
            $q="select * from client where `email`='$mail' and `mdp`='$mdp'";
            $r=mysqli_query($link,$q);
            if (mysqli_num_rows($r)==0)
            header ("Location: client_inex.php");
            else{
                $q="select `id_client`, `nom` from client where `email`='$mail'";
                $r=mysqli_query($link,$q);
                $row = mysqli_fetch_array($r);
                $id_client = $row[0];
                $nom_cl = $row[1];
                session_start();
                $_SESSION['nom'] = $nom_cl;
             //   $_SESSION['type'] = "client";
                $_SESSION['user_id'] = $id_client;
                header ("Location: index.php");
            }
            
            
        }
    

  ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Se connecter</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/cnx.css">
</head>
<body>

<div class="container">
<form  method="POST" action="" >
        <h1>Identification</h1>
        <fieldset><legend>Créer un compte</legend>
        <label>Tapez sur le bouton pour creer votre compte</label><br>
        <a href="remplir.php" >Créer un compte</a>
        </fieldset><br><br>
        <fieldset><legend>Déja enregistrer ?</legend>
            <table>
                <tr>
                    <td>Merci de remplir votre coordonnées:</td>
                </tr>
                <tr>
                    <td><label>Adresse Mail</label></td><td><input  type="email" name="t2" placeholder="votre email" required/></td>
                </tr>
                <tr>
                    <td><label>Mot de passe</label></td><td><input  type="password" name="t3" placeholder="*********" required/></td>
                </tr>
                <tr>
                    <td><input type="submit" name="button2" value="Se connecter"/></td><td><input type="reset" value="Annuler"></td><td><a href="forgetpwd.php">mot de passe oublié</a></td>
                </tr>
            </table>
        </fieldset>
</form>
</div>
</body>
</html>