<!--  This file is used to accept the friend request of the other users sent to the current user. -->
<?php 
    
    include('core/init.php');
    

    //connect to the database
    $con = mysqli_connect('localhost','root','','mytrack');

    if($_GET['f_id'])
    {
        
        $id = $_GET['f_id'];
        
        // this is to get the user id
        $user_id=$_SESSION['user_id'];

        // this query is updating the status of friendship to both sides
        $que="UPDATE friends SET status=2 WHERE user_id='$id' AND friend_id='$user_id'"; 
        $runq = mysqli_query($con,$que);          

    }

?>
