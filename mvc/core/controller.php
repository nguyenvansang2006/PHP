<?php
class Controller {
public function home() {
 echo "trang home cua controller Admin";
 }
protected function loadView($master, $viewname, $data){
 require_once PATH_TO_VIEW.strtolower($master).'.php';
 }
}
?>