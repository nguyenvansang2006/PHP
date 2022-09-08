<?php
$cart=new Cart;
$cartItems=$cart->getItems();
?>

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Giỏ Hàng</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      
        <div class="row">
          <div class="col-md-1">STT</div>
          <div class="col-md-2">Tên Hàng</div>
          <div class="col-md-3">Đơn Giá</div>
          <div class="col-md-4">Số Lượng</div>
          <div class="col-md-2">Thành tiền</div>
      </div>
      <?php
if(empty($cartItems))echo " Giỏ hàng của bạn đang rỗng" ;
else
{
 $i=1;
 foreach($cartItems as $productId=>$item) { ?>
 <form action='<?php echo BASE_URL ?>cart/update' method=post >


 <div class="row">
 <div class="col-md-1"><?php echo $i++;?></div>
 <div class="col-md-2"><?php echo $item['productName'];?></div>
  <div class="col-md-4"><?php echo $item['price'];?>$</div>
  <div class="col-md-3"><input max=100 min=0 step=1 name='<?php echo $productId ?>' type=number value="<?php echo $item['quantity'];?>"></div>
  <div class="col-md-2"><?php echo $cart->getSubTotal($productId);?>$</div>
  <div> <input type="submit" class="btn btn-primary" value="Save Changes"></div>
  <!-- <div> <input type="submit" class="btn btn-primary" value="Remove"></div> -->
 
 </div>
 </form>
 
<!--  <?php

if($_SESSION['update']) 

{
  
 echo "<script>carticon.click()</script>";
 unset($_SESSION['update']);
}
?> -->

 <?php }} ?>
 <div class="row" >
 <div class="col-md-8">Tổng cộng</div>
 <div class="col-md-4"><?php echo $cart->getTotal();?>$</div>
 </div>


      </div>

            <i class="fas fa-shopping-cart" id=carticon></i>
      <?php

      $cart=new Cart;
      if($cart->getCount()!=0) echo '('.$cart->getCount().')';
      ?>




<a href='<?php echo BASE_URL ?>cart/checkout' class="btn btn-primary"> Check Out</a>

      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</div>

