<?php class Page extends UserController{
 
 public function showPage($pageId=1){
 $this->loadView('master2','page/showpage',[]);
}
}
?>
