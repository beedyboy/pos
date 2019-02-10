<?php 

class Database 
{ 
public $db; 
private static $dsn = 'mysql:host=localhost:3306;dbname=beedypos'; 
private static $user= 'beedy'; 
private static $pass= 'kaydee'; 
public static $instance; 
public function __construct() 
{ 
$this->db = new PDO(self::$dsn,self::$user,self::$pass); 
} 

public static function getInstance() 
{ 
if(!isset(self::$instance)) 
{ 
$object= __CLASS__; 
self::$instance= new $object; 
} 
return self::$instance; 
} 

public function getDb() {
    if ($this->db instanceof PDO) {
         return $this->db;
    }
}

} 
?>
