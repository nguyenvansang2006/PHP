<?php
$products=$data['products'];
$paging=$data['paging'];
?>

<div class="row text-danger"> Tìm thấy <?php echo $paging->totalRecords; ?> sản phẩm</div>
<div class="row g-1">
<?php foreach($products as $p ) {?>
    <div class="col-4 col-md-4">
        <div class="card-body card-bottom">
        <a href="<?php echo BASE_URL ?>product/productDetail/<?php echo $p['alias']?>" class='text-decoration-none'>
                
        <img src="<?php echo BASE_URL ?>public/upload/<?php echo $p['image']?>" style="height: 200px" alt="productName" class="img-fluid" />
            
           
<h2> <?php echo $p['productName']?></h2>

<?php if($p['saleprice']<>0){ ?>
 <span class='text-decoration-line-through'>
<?php echo number_format($p['price'],2)?>$
</span>
<span class='fw-bold fs-5 text-danger'>
<?php echo number_format($p['saleprice'],2)?>$
</span>
 <?php } else{?>
 <span class='fw-bold fs-5 text-danger'>
<?php echo number_format($p['price'],2)?>$
</span>
 <?php }?><br/>
 <a class=' btn btn-primary btn-add' href='<?php echo BASE_URL ?>cart/add/<?php echo $p['productId']?>/<?php echo $p['productName']?>/<?php if ($p['saleprice']<>0) echo $p['saleprice']; else echo $p['price']?>'>
Add to Cart
</a> 
</div>
 </div>
 <?php }?>
 <div class="row">
        <?php 
        $paging=$data['paging'];
        $paging->createLinks();
        ?>
 </div>
 </div>