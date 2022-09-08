<?php $products=$data['products'];
?>
<div class="col-md-9">
<h2>GARBAGE CAN</h2>
 <div class="row btn-success">
<!-- Hiển thị vòng lặp sản phẩm -->
 <tbody>
 <table id="table">
  
  <th>#</th>
  <th>productId</th>
  <th>productName</th>
  <th>Ẩn|Hiện</th>
  <th>Giá</th>
  <th>Xóa|Khôi Phục</th>
<?php
$i=1;
foreach($products as $p){?>
 <tr>
 <th scope="row"><?php echo $i++ ?></th>
 <td><?php echo $p['productId'] ?></td>
 <td><?php echo $p['productName']?></td>
 
 <td><a href='<?php echo BASE_URL?>adminproduct/productToggleStatus/<?php echo $p["productId"]?>'><?php if($p['status']==1) echo ("<i class='fas fa-check text-primary'></i>"); else echo ("<i class='fas fa-times text-danger'></i>")?></a></td>
 <td><?php echo number_format($p['price'],2) ?>$</td>

 <td><a href='<?php echo BASE_URL?>adminproduct/productDelete/
<?php echo $p["productId"]?>'onClick='return confirm("Bạn có muốn xóa vĩnh viễn sản phẩm này ?");'> Xóa| </a>

<a href='<?php echo BASE_URL?>adminproduct/productToggleTrash/
<?php echo $p["productId"]?>'onClick='return confirm("Bạn có muốn khôi phục sản phẩm này ?");'>Khôi phục </a>
</td>
 </tr>
<?php }?>
<div class="row button btn-warning">
<?php
if(!empty($_SESSION['msg'])) {echo $_SESSION['msg'];unset($_SESSION['msg']);}
?>
</div>
</table>
 </tbody>