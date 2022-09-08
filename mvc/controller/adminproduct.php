<?php class AdminProduct extends AdminController{
    private $adminproductmodel;
    function __construct(){
       $this->adminproductmodel=new AdminProductModel();
   }
    public function productList($limit=LIMIT,$offset=0) 
 {

        // Yêu cầu model thực hiện
        $data['products']=$this->adminproductmodel->productList($limit,$offset) ;
        //Gửi dữ liệu cho view
        $this->loadadminview('adminmaster1','adminproduct/productList', $data);
 }

 public function productToggleTrash($productId) 
 {
        // Yêu cầu model thực hiện

        $this->adminproductmodel->toggleTrash($productId);
 }
    // public function toggleTrash($alias){

    //    $this->$adminProductModel->toggleTrash($productId);
  
    // }
    public function productToggleStatus($productId) 
 {
        // Yêu cầu model thực hiện
  
        $this->adminproductmodel->toggleStatus($productId);
 }

 public function productListIntrash($limit=LIMIT,$offset=0)
{
        //Yêu cầu model thực hiện

        $data=$this->adminproductmodel->productListIntrash($limit,$offset) ;
        //Gửi dữ liệu cho view
        $this->loadAdminView('adminmaster1','adminproduct/productlistIntrash', $data);
}
  public function productDelete($productId) 
 {
        $this->adminproductmodel->productDelete($productId);
 }
 public function productUnTrash($productId) 
 {
         $this->adminproductmodel->productUnTrash($productId);
 }

 public function AddProduct()
 { 
       //Xử lý dữ liệu nhận được
       if(isset($_POST['submit']))
       {

              $this->adminproductmodel->doAddProduct();
       }
       // Hiển thị form add product
       $catmodel=new CategoryModel;
       $data['cats']=$catmodel->getAll(['trash'=>0,'status'=>1]);
       $brandmodel=new BrandModel;
       $data['brands']=$brandmodel->getAll(['trash'=>0,'status'=>1]);
       $this->loadAdminView('adminmaster1','adminproduct/addProduct',$data);
 }

 public function UpdateProduct($productId)
 { 
 //Xử lý dữ liệu nhận được
 $adminproductmodel=new AdminProductModel;
 if(isset($_POST['submit']))
 {
 
 $adminproductmodel->doUpdateProduct($productId);
 }
 
 // Hiển thị form add product
 $catmodel=new CategoryModel;
 $data['cats']=$catmodel->getAll([]);
 $brandmodel=new BrandModel;
 $data['brands']=$brandmodel->getAll([]);
 
 $data['oldproduct']=$adminproductmodel->get(['productId'=> $productId]);
 $this->loadAdminView('adminmaster1',"adminproduct/updateproduct",$data);
 }

}?>