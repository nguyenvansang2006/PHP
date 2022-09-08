<?php
class AdminController extends Controller{
 protected function loadadminview($master, $view, $data){
 require_once PATH_TO_VIEW.strtolower($master).'.php';
 }


}
?>
