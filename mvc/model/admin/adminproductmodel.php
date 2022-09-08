<?php
class AdminProductModel extends AdminModel{
 protected $table=DB_PREFIX.'product';
 protected $field=['productName','alias','catId','brandId','image','trash','status','detail','price','saleprice'];
 protected $key='productId';
// Các function cần thiết
public function productList($limit,$offset){
  
    //Lấy danh sách sản phẩm
    $data['products']=$this->getAllLimit(['trash'=>0],$limit,$offset);
    //Tính tổng số sản phẩm
    $totalRecords=count($this->getAll(['trash'=>0]));
    //Chuẩn bị paging
    $data['paging']=new Paging('adminproduct/productList/',$totalRecords,$limit,$offset);
    return $data;
    }
   
public function toggleTrash($productId)
 { 
    if( $this->toggle('trash',$productId))
    $_SESSION['msg']='Thực hiện thành công';
    else
    $_SESSION['msg']='Thực hiện không thành công';
    header("location:".BASE_URL."adminproduct/productList/".LIMIT."/0");
    exit;
 }
 public function toggleStatus($productId)
 { 
    if( $this->toggle('status',$productId))
    $_SESSION['msg']='Thực hiện thành công';
    else
    $_SESSION['msg']='Thực hiện không thành công';
    header("location:".BASE_URL."adminproduct/productList/".LIMIT."/0");
    exit;
 }
 public function productListIntrash($limit=LIMIT,$offset=0) {
    // Lấy danh sách sản phẩm trong thùng rác
    $data['products']=$this->getAllLimit(['trash'=>1],$limit, $offset);
    //Tính tổng số sản phẩm
    $totalRecords=count($this->getAll(['trash'=>1]));
    //Chuẩn bị paging
    $data['paging']=new Paging('adminproduct/productListIntrash/',$totalRecords,$limit,$offset);
    return $data;
    }
    public function productDelete($productId)
 {
    if( $this->delete($productId))
    $_SESSION['msg']='Thực hiện thành công';
    else
    $_SESSION['msg']='Thực hiện không thành công';
    header("location:".BASE_URL."adminproduct/productListIntrash/".LIMIT."/0");
    exit;
 }
 public function productUnTrash($productId)
 {
    if( $this->toggleTrash($productId))
    $_SESSION['msg']='Thực hiện thành công';
    else
    $_SESSION['msg']='Thực hiện không thành công';
    header("location:".BASE_URL."adminproduct/productListIntrash/".LIMIT."/0");
    exit;
 }

 public function doAddProduct()
 {
 // Lấy dữ liệu sp mới
 
 $newpro['productName']=$_POST['inputProductName'];
 $newpro['alias']=$_POST['inputAlias'];
 $newpro['catId']=$_POST['inputCatId'];
 $newpro['brandId']=$_POST['inputBrandId'];
 $newpro['image']=basename($_FILES['inputFileUpload']['name']);
 $newpro['trash']=0;
 $newpro['status']=$_POST['inputStatus'];
 $newpro['detail']=$_POST['inputDetail'];
 $newpro['price']=$_POST['inputPrice'];
 $newpro['salePrice']=$_POST['inputSalePrice'];
 //Tạo chuỗi alias
 $helper=new Helper;
 if($newpro['alias']=='')$newpro['alias']=$helper->to_alias($newpro['productName']);
 //Kiểm lỗi
 $_SESSION['msg']='';
 
 if($newpro['price']<$newpro['salePrice'])
 $_SESSION['msg'].='Giá sale phải nhỏ hơn giá bán';

 else
 { $uploadSuccess=$helper->doUpload('inputFileUpload');
 if($uploadSuccess)
 {
 if($this->insert($newpro)) $_SESSION['msg'].='Thêm sản phẩm thành công';
 else $_SESSION['msg'].='Thêm sản phẩm thất bại';
 }
 
 }
 }

 public function doUpdateProduct($productId)
 {
 // Lấy dữ liệu sp mới
 
 $newpro['productName']=$_POST['inputProductName'];
 $newpro['alias']=$_POST['inputAlias'];
 $newpro['catId']=$_POST['inputCatId'];
 $newpro['brandId']=$_POST['inputBrandId'];
 $newpro['status']=$_POST['inputStatus'];
 $newpro['trash']=$_POST['inputTrash'];
 $newpro['detail']=$_POST['inputDetail'];
 $newpro['price']=$_POST['inputPrice'];
 $newpro['salePrice']=$_POST['inputSalePrice'];
 //Tạo chuỗi alias
 $helper=new Helper;
 if($newpro['alias']=='')$newpro['alias']=$helper->to_alias($newpro['productName']);
 //Kiểm lỗi
 $_SESSION['msg']='';
 
 if($newpro['price']<$newpro['saleprice'])
 $_SESSION['msg'].='Giá sale phai nho hon giá bán';
 else
 if($_FILES['inputFileUpload']['name']!='')
 {
 $_SESSION['msg'].="file up len:".$_FILES['inputFileUpload']['name'];
 $uploadSuccess=$helper->doUpload('inputFileUpload');
 if($uploadSuccess)
 {$newpro['image']=$_FILES['inputFileUpload']['name'];
 if($this->update($newpro,$productId)) $_SESSION['msg'].='Cập nhật sản phẩm thành công';
 else $_SESSION['msg'].='Cập nhật sản phẩm thất bại';
 header("Location:".BASE_URL."adminProduct/productList");
 exit;
 }
 
 }
 else
 {
 if($this->update($newpro,$productId))$_SESSION['msg'].='Cập nhật sản phẩm thành công';
 else $_SESSION['msg'].='Cập nhật sản phẩm thất bại';
 header("Location:".BASE_URL."adminProduct/productList");
 exit;

 }
 }
}
?>
