<?php
class CartModel extends BaseModel{
 public function checkOut($total)
 {
 $_SESSION['msg']='';
 //Hung du lieu customer va đưa vào CSDL
 $newcustomer['userId']=0;
 $newcustomer['fullname']=$_POST['inputFullname'];
 $newcustomer['address']=$_POST['inputAddress'];
 $newcustomer['phone']=$_POST['inputPhone'];
 $newcustomer['email']=$_POST['inputEmail'];
 $newcustomer['trash']=0;
 
 $customermodel=new CustomerModel;
//Lay id của customer mới
 $customerId =$customermodel->insert($newcustomer);
 if(!$customerId)$_SESSION['msg'].='Lỗi trong quá trình xử lý đơn hàng';
 
 
 //Hung du lieu cua order và dua vao csdl
 
 $neworder['customerId']=$customerId;
 $neworder['orderDate']=date('Y-m-d H:i:s');
 $neworder['total']=$total;
 $neworder['note']=$_POST['inputNote'];
 $neworder['status']=1;
 $neworder['trash']=0;
 

 $ordermodel=new OrderModel;
 if(!($ordermodel->insert($neworder)))$_SESSION['msg'].='Lỗi trong quá trình xử lý đơn hàng';
 //Lay id của order
 
 $sql=" select * from " .DB_PREFIX ."order order by orderId DESC ";
 $orderId=$this->queryFirst($sql)['orderId'];
 //Hung du lieu chi tiet order
 $orderdetailmodel=new OrderDetailModel;
 
 foreach($_SESSION['cart'] as $k=>$c)
 {$neworderDetail['orderId']=$orderId;
 $neworderDetail['productId']=$k;
 $neworderDetail['price']=$c['price'];
 $neworderDetail['quantity']=$c['quantity'];
 $neworderDetail['trash']=0;
 
 if(!($orderdetailmodel->insert($neworderDetail)))$_SESSION['msg'].='Lỗi trong quá trình xử lý đơn hàng';
 }
 
 if ($_SESSION['msg']=='') {
 $_SESSION['msg']="Thanh toán thành công";
 unset($_SESSION['cart']);
 }
 } 
 
}
?>