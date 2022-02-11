<?php
define("DBHOST", "localhost");
define("DBUSER", "wacogne");
define("DBPASS", "Victor240295!");
define("DBNAME", "campus_bdd");

// DSN de connexion
$dsn = "mysql:dbname=".DBNAME.";host=".DBHOST;
$db = null;
// On va se connecter à la base
try {
    //on instancie PDO
    $db= new PDO($dsn, DBUSER, DBPASS);

    // on s'assure d'envoyer les données en UTF 8
    $db->exec("SET NAMES utf8");

}catch (PDOException $e){
    die("erreur:".$e->getMessage());

}