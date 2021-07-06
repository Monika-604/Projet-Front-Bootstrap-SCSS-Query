<?php


if(isset($_POST["fname"])
        && isset($_POST["lname"])
        && isset($_POST["email"]) ){

        include ("connect-db.php");
        $sql="INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`) 
                VALUES (NULL, :firstname, :lastname,:email);";
        $query=$connect->prepare($sql);
        $query->bindParam(":firstname",$_POST["fname"] );
        $query->bindParam(":lastname",$_POST["lname"] );
        $query->bindParam(":email",$_POST["email"] );
        $result= $query->execute();

        if ($result){
            echo "successful";
        }else{
            echo "failed";
        }

}else{
    echo "nashod";
}


?>