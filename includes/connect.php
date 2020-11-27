<?php 
    $db_dsn = array( 
        'host' => 'localhost',
        'dbname' => 'FIP',
        'charset' => 'utf8'
        
    );



    $dsn = 'mysql:'.http_build_query($db_dsn, '', ';');
    $db_user = 'root';
    $db_pass = 'root'; // windows users leave this blank
   



    try{
        $pdo = new PDO($dsn, $db_user, $db_pass, $db_port);
        // var_dump($pdo);
        // echo (in this case) is almost like console.log
        // echo "you're in! enjoy the show";


        
        
    } catch (PDOException $exception){
        echo 'Connection Error:'.$exception->getMessage();
        exit();
    }