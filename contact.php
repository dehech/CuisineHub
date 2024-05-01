<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contactez-nous</title>
</head>
<style>
    h1 {
  font-size: 24px;
  text-align: center;
  margin-bottom: 10px;
}

p {
  text-align: center;
  margin-bottom: 20px;
}

form {
  max-width: 400px;
  margin: 0 auto;
}

textarea {
  width: 100%;
  height: 150px;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
  margin-bottom: 10px;
  resize: vertical;
}

div.button-container {
  text-align: center;
}

div.button-container input[type="submit"],
div.button-container input[type="reset"] {
  padding: 10px 20px;
  background-color: #4CAF50;
  color: #fff;
  border: none;
  cursor: pointer;
  margin: 5px;
}

div.button-container input[type="submit"]:hover,
div.button-container input[type="reset"]:hover {
  background-color: #45a049;
}

    </style>
<body>
    <h1>Contactez-nous</h1>
    <p>N'hésitez pas</p>
    <form method="POST">
    <textarea  name="text" placeholder="N'hésitez pas"></textarea>
    <br>
    <div class="button-container">
    <input type="submit" name="b1" value="Envoyer">
    <input type="reset" value="Annuler">
    </div>
    </form>
    <?php
    if(isset($_POST['button1'])){
        header ("Location: index.php");
    }
    ?>
</body>
</html>