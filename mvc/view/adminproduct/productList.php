<?php $products= $data['products'];

?>
<!-- Hiển thị vòng lặp sản phẩm -->
 <tbody>
 <div class="table-responsive">
<table id="table">
  
    <th>#</th>
    <th>productId</th>
    <th>productName</th>
    <th>Ẩn|Hiện</th>
    <th>Giá</th>
    <th>Xóa|Sửa</th>
 

<?php

$i=1;

foreach($products['products'] as $p){?>

  
 <tr>
 <th scope="row"><?php echo $i++ ?></th>
 <td><?php echo $p['productId'] ?></td>
 <td><?php echo $p['productName']?></td>
 <td><a href='<?php echo BASE_URL?>adminproduct/productToggleStatus/<?php echo $p["productId"]?>'><?php if($p['status']==1) echo ("<i class='fas fa-check text-primary'></i>"); else echo ("<i class='fas fa-times text-danger'></i>")?></a></td>
 <td><?php echo number_format($p['price'],2) ?>$</td>
 <td><a href='<?php echo BASE_URL?>adminproduct/productToggleTrash/<?php echo $p["productId"]?>'onClick='return confirm("Bạn có chắc chắn xóa sản phẩm này ?");'>Xóa</a>|<a href='<?php echo BASE_URL.'adminproduct/updateProduct/'.$p['productId']?>'>Sửa</a></td>
 </tr></tr>

<?php }?>
<div class="row button btn-warning">
<?php
if(!empty($_SESSION['msg'])) {echo $_SESSION['msg'];unset($_SESSION['msg']);}
?>
</div>

 </tbody></table></div>