<?php

// include the functions from functions.php
    include('functions.php');

    // to check whether user is logged in or not
 if(empty($_SESSION['user_id']))
 {
     header('location:index.php');
 }
 
?>
<!DOCTYPE html>
<html>
<title>Track it!</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.9/css/mdb.min.css" rel="stylesheet">
<!-- JQuery -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.9/js/mdb.min.js"></script>
<script type="text/javascript" src="man.js"></script>

<style>
    #inp{
        border: 0;
        border-bottom: solid black 2px;
        width: 50%;
        padding: 2%;
        line-height: 2%;
        font-size: 20px;
        right: 0px;
        position: relative;
    }
</style>
<body style="background-color:black;">
    <!-- This page is used to search for the user and to get the list of all the users that are present -->
<?php include 'navbar.php'; ?>
<!--/.Navbar -->
              <div class="container" style="padding-top: 2%;">
                    <center>    
                    <div class="inpt" >
                        <input type="text" name="keyword" id="inp"  placeholder="Enter Name" style="background-color:white;" onkeyup="show_results()" >
                        </div>
                    </center>
                        <div style="padding-top: 3%">

                        <ul class="w3-ul w3-card-4" id="srcfrnd">
                          
                            
                          
                        </ul>
                        <ul class="w3-ul w3-card-4" id="prevfrnd">
                          
                                <?php 
                            $friends=getusers();
                            
                            foreach ($friends as $friend) {
                            echo $friend;
                            }

                            ?>
                    
                          
                        </ul></div>
                    </div>
                    
                </div>
</body>
</html>
<?php
  include('footer.php');
  ?>
