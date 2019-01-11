<!DOCTYPE html>
<?php 
    session_start(); 
    include("connection.php");
?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="icon" type="image/png"  sizes="76x76" href="images/New_Era_University.png">
    <title>NEU Fair MMXIX Attendance Registration</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <!--For the college & courses json.-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
    <!--Font-->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" type="text/css" href="css/index.css">
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <img src="images/New_Era_University.png" id="neuLogo">    
            </div>
            <div class="col-md-4"></div>
        </div>
        <form method="post" enctype="multipart/form-data" class="register-form"> 
           
            <div class="row">
                <div class="col-md-4 col-sm-4 col-lg-4">
                    <label for="username">USERNAME</label>
                    <input name="username" class="form-control" type="text" autocomplete="off" required>             
                </div>            
            </div>
            <div class="row">
                <div class="col-md-4 col-sm-4 col-lg-4">
                    <label for="password">PASSWORD</label>
                    <input name="password" class="form-control" type="password" autocomplete="off" required>             
                </div>            
            </div>
            <hr>
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12">
                    <button class="btn btn-default logbutton" name="login">Login</button>           
                </div>          
            </div>    
            <?php   
            if(isset($_POST['login'])) {

                $username = htmlentities(mysqli_real_escape_string($connection, $_POST['username']));
                $password = htmlentities(mysqli_real_escape_string($connection, $_POST['password']));

                $select_user = "SELECT * FROM admin WHERE username='$username' AND password='$password'";

                $query = mysqli_query($connection, $select_user);
                $check_user = mysqli_num_rows($query);

                if($check_user == 1) {
                    $_SESSION['username'] = $username;		
                    echo "<script>window.open('main.php', '_self')</script>";
                } else {
                    echo "<script>alert('Your Email or Password is incorrect.')</script>";
                }
            }
        ?>
        </form>
        
    </div>
</body>