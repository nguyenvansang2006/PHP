<?php
class Dashboard extends AdminController{
 public function home()
 {
 $this->loadadminview('adminmaster1','dashboard/home',[]);
 }
}
?>