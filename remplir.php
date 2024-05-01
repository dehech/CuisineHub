<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/remplir.css">
    <link rel="icon" type="image/x-icon" href="images-removebg-preview.png">
</head>
<body>
<?php
        $link=mysqli_connect("db_mysql","root","","CuisineHub");
        if(isset($_POST['button1'])) {
              $nom = $_POST['nom'];
              $prenom = $_POST['pren'];
              $email = $_POST['mail'];
              $pwd = $_POST['pass'];
              $tel = $_POST['tel'];
              $adr = $_POST['adrs'];
              $q="select * from client";
              $r=mysqli_query($link,$q);
                if (mysqli_num_rows($r)==0){
                  $q="insert into client (`id_client`, `nom`, `prenom`, `email`, `mdp`, `tel`, `adresse`) values (1, '$nom', '$prenom', '$email', '$pwd', '$tel', '$adr')";
                  $r=mysqli_query($link,$q);
                  header ("Location: inscription_réussie.php");
                }else{
                  $q="select * from client where email='$email'";
                  $r=mysqli_query($link,$q);
                  if (mysqli_num_rows($r)==0){
                    $q="select max(id_client) from client";
                    $v=mysqli_query($link,$q);
                    $row = mysqli_fetch_array($v);
                    $max_id_client = $row[0];
                    $q="insert into client values ('$max_id_client'+1, '$nom', '$prenom', '$email', '$pwd', '$tel', '$adr')";
                    $r=mysqli_query($link,$q);
                    header ("Location: inscription_réussie.php");
                  }else
                    header ("Location: exist.php");
                }
        }        
          
        ?>
<h1 class="form-title">Inscription</h1>
<div class="container">
    <form method="POST">
      <fieldset>
        <legend class="form-title">Vos coordonnées</legend>
        <div class="row">
          <div class="col">
            <div class="form-group">
              <label>Nom<span class="required-field">*</span></label>
              <input type="text" class="form-control" name="nom" placeholder="Votre nom" required>
            </div>
          </div>
          <div class="col">
            <div class="form-group">
              <label>Prénom<span class="required-field">*</span></label>
              <input type="text" class="form-control" name="pren" placeholder="Prénom" required>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col">
            <div class="form-group">
            <label for="email">Tapez votre mail<span class="required-field">*</span></label>
              <input type="email" class="form-control" name="mail" placeholder="example@domain.com" required>
            </div>
          </div>
          <div class="col">
            <div class="form-group">
              <label>Mot de passe<span class="required-field">*</span></label>
              <input type="password" class="form-control" name="pass" placeholder="*******" maxlength="8" required>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col">
            <div class="form-group">
            <label>Entrez votre adresse<span class="required-field">*</span></label>
          <input type="text" class="form-control" placeholder="Votre adresse" name="adrs" required>
            </div>
          </div>
          <div class="col">
            <div class="form-group">
              <label>Tapez votre numéro<span class="required-field">*</span></label>
              <input type="number" class="form-control" name="tel" placeholder="+216********" required>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col">
            <input type="submit" class="btn btn-register" name="button1" value="S'inscrire">
          </div>
          <div class="col">
            <input type="reset" class="btn btn-secondary" value="Annuler">
          </div>
          <div class="col">
            <span class="required-field">*: Champ obligatoire</span>
          </div>
        </div>
      </fieldset>
    </form>
  </div>
</body>
</html>