<?php
class Db{
 private $mysqli;
 function __construct()
{
    $this->mysqli=new mysqli(DB_HOST,DB_USER,DB_PASS,DB_NAME) or die;
    $this->mysqli->set_charset('utf8mb4');
}
public function queryFirst($sql)
{
    return $this->mysqli->query($sql)->fetch_assoc();
}
 public function queryAll($sql)
{
 
    $result=$this->mysqli->query($sql)->fetch_all(MYSQLI_ASSOC);
    
   return $result;
}
 public function query($sql)
 {
    return $this->mysqli->query($sql);
 }
}
?>