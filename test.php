<?php
require_once "config.php";
require_once PATH_TO_CORE.'db.php';
require_once PATH_TO_CORE.'basemodel.php';
require_once PATH_TO_MODEL.'productmodel.php';
require_once PATH_TO_MODEL.'pagemodel.php';
require_once PATH_TO_MODEL.'imgmodel.php';
require_once PATH_TO_MODEL.'linkmodel.php';
// $a=new Db;
// $sql='insert into tenbang...';
// $success=$a->query($sql);
// var_dump($success);
// $sql='select * from nguyenvansang_product';
// $kq=$a->queryAll($sql);
// var_dump($kq);

// $p=new LinkModel;
// $rows=$p->getAll(['status'=>1, 'trash'=>0]);
// echo '<pre>';
// print_r ($rows);
// echo '</pre>';

// $p=new LinkModel;
// $rows=$p->getAll(['status'=>1, 'trash'=>0]);
// echo '<pre>';
// print_r ($rows);
// echo '</pre>';

$model=new LinkModel;
 $rows=$model->getAll([ 'status'=>1, 'trash'=>0]);
echo '<pre>';
print_r($rows);
echo'</pre>'

// $rows=$model->getAllLimit(['trash'=>0,'status'=>1],2,2);
// echo '<pre>';
// print_r ($rows);
// echo '</pre>';

//require_once PATH_TO_CORE.'productmodel.php';
///require_once "mvc/core/controller.php";
//require_once "mvc/core/usercontroller.php";
//require_once "mvc/controller/product.php";

// $a=new Db;
// $sql="select * from nguyenvansang_product ";
// $row=$a->queryAll($sql);
// var_dump($row)
// $p=new Product;
// $p->productByCat('may-bach',10,0);

//ket noi csdl
////$mysqli= new mysqli(DB_HOST,DB_USER,DB_PASS,DB_NAME)or die;
//$sql='select * from nguyenvansang_page';
//$sql="insert into tbl_category(catName,alias,parentId,trash,status) values('Xe linh tinh','xe-linh-tinh',0,0,1)";
//$result=$mysqli->query($sql);
//$ro=$result->fetch_all(MYSQLI_ASSOC);
//echo '<pre>';
//print_r($ro);
//echo '</pre>';
//if($result) echo 'insert thanh cong';
//else echo 'insert that bai';
//echo $mysqli->error;
//dong ket noi
//$this->$mysqli->close;
?>


