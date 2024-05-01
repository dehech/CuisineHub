<?php
    $link=mysqli_connect("db_mysql","root","","CuisineHub");
   /* if ($link-> connect_error) 
    die("Connection failed: ". mysqli_connect_error());
    else{
    echo "Connected successfully";
    echo "<br>";*/
    if(isset($_POST['bot'])){
        $mail=$_POST['b'];
            $r="select * from client where `email`='$mail'";
            $q=mysqli_query($link,$r);
            if (mysqli_num_rows($q)==0)
            header ("Location: client_inex.php");
            else
            header ("Location: sent_mail.php");
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>mot de passe oublié</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="icon" type="image/x-icon" href="images-removebg-preview.png">
</head>
<style>
    fieldset {
        border: none;
    }
    
    legend {
        font-weight: bold;
    }
    
    table {
        margin: 10px;
    }
    
    td {
        padding: 5px;
    }
    
    input[type="email"] {
        width: 200px;
        padding: 5px;
    }
    
    input[type="submit"], input[type="reset"] {
        padding: 5px 10px;
        background-color: #4CAF50;
        color: #fff;
        border: none;
        cursor: pointer;
    }
    
    input[type="submit"]:hover, input[type="reset"]:hover {
        background-color: #45a049;
    }
</style>
<body>

<form method="POST" action="" >  
    <fieldset><legend>mot de passe oublié</legend>
        <table>
         <tr>
            <td><label>Merci d'entrez votre adresse mail:</label></td><td><input type="email" name="b" placeholder="votre email" required/></td>
         </tr>
         <tr>
            <td><input type="submit" value="valider" name="bot"/></td><td><input type="reset" value="Annuler"></td>
         </tr>
        </table>
    </fieldset>  
</body>
</html>