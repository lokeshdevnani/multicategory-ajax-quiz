<?php
$db_host       = "127.0.0.1";
$db_name       = "technolovers";
$db_user       = "root";
$db_pass       = "lokesh";
try{
    $db = new PDO(
        "mysql:host={$db_host};dbname={$db_name}",
        $db_user,
        $db_pass
    );
    $db->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e) {
    echo $e->getMessage();
    echo 'Sorry, Could not connect to the database this moment. Try again later';
    exit;
}

session_start();
