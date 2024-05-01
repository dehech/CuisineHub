<!DOCTYPE html>
<html>
<head>
    <title>Restaurant Reservation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        
        h1 {
            text-align: center;
        }
        
        .restaurant-plan {
            position: relative;
            max-width: 100%;
        }
        .restaurant-plan input[type="radio"]:checked+label{ 
            background-color: #1f9b00;
        }
        input[type="radio"] {
            display:none;
        }
        
       .table {
            position: absolute;
            background-color: #fc6bfc;
            border: 1px solid #888;
            border-radius: 10%;
            width: 110px;
            height: 70px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        
        .table:hover {
            background-color: #fd9d0d;
        }

        form {
            width: 400px;
            margin: 0 auto;
            margin-top: 20px;
        }
        
        label {
            display: block;
            margin-top: 10px;
        }
        
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            cursor: pointer;
            margin-left: 100px;
        }
        
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        img{
            width: 800px;
            height: 400px;
            position: absolute;
            top: 200px;
            left: 300px;
        }
    </style>
    
</head>
<body>
    <h1>Restaurant Reservation</h1>
    <?php
        session_start();
        if (isset($_POST['b1']) && isset($_POST['table'])) {
            $link=mysqli_connect("db_mysql","root","","CuisineHub");
            $user=$_SESSION['user_id'];
            $nump=$_POST['table'];
            echo 'test0';
            $q="select * from reservation where `num_places`=$nump";
            $r=mysqli_query($link,$q);
            if (mysqli_num_rows($r)==0){
                $q="select * from reservation ";
                $r=mysqli_query($link,$q);
                echo 'test1';
                if (mysqli_num_rows($r)==0){
                    echo 'test2';
                    $q = "INSERT INTO reservation (id_reservation, id_cl, num_places) VALUES (1, '$user', '$nump')";
                    $r=mysqli_query($link,$q);
                    header ("Location: success.php");
                }else{
                    echo 'test3';
                    $q="select max(id_reservation) from reservation";
                    $r=mysqli_query($link,$q);
                    $row = mysqli_fetch_array($r);
                    $max_id_reservation = $row[0];
                    $q="INSERT INTO reservation (id_reservation, id_cl, num_places) VALUES ('$max_id_reservation'+1, '$user', '$nump')";
                    $r=mysqli_query($link,$q);
                    header ("Location: success.php");
                }
            }else{
                header ("Location: deja_reserve.php");
            }
        }
        ?>
    
<form method="POST">  
    <img src="./images/Capture.PNG" alt="">
    <div class="restaurant-plan">
        <input type="radio" name="table" value="1" id="table1" class="table-radio" />
        <label for="table1" class="table" style="top: 170px; left: -235px;"></label>
        
        <input type="radio" name="table" value="2" id="table2" class="table-radio" />
        <label for="table2" class="table" style="top: 375px; left: -235px;"></label>
        
        <input type="radio" name="table" value="3" id="table3" class="table-radio" />
        <label for="table3" class="table" style="top: 170px; left: -32px;"></label>
        
        <input type="radio" name="table" value="4" id="table4" class="table-radio" />
        <label for="table4" class="table" style="top: 375px; left: -32px;"></label>
        
        <input type="radio" name="table" value="5" id="table5" class="table-radio" />
        <label for="table5" class="table" style="top: 170px; left: 172px;"></label>
        
        <input type="radio" name="table" value="6" id="table6" class="table-radio" />
        <label for="table6" class="table" style="top: 375px; left: 172px;"></label>
        
        <input type="radio" name="table" value="7" id="table7" class="table-radio" />
        <label for="table7" class="table" style="top: 170px; left: 375px;"></label>
        
        <input type="radio" name="table" value="8" id="table8" class="table-radio" />
        <label for="table8" class="table" style="top: 375px; left: 375px;"></label>
    </div>
    <input type="submit" name="b1" value="Reservé maintenant">
</form> 
       <!-- <form method="POST" >
            <input type="submit" name="b1" value="Reservé maintenant">
        </form> -->
        
</body>
<script>
        
</script>
</html>