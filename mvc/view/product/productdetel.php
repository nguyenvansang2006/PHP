<?php
$p=$data['currentProduct'];
$products=$data['sameProducts'];?>
<div class="row g-1">
<img src="<?php echo BASE_URL ?>public/upload/<?php echo $p['image']?>" style="width: 50%" class='imgfluid' alt="" >
<h2><?php echo $p['productName']?></h2>

<?php if($p['saleprice']<>0){ ?>
 <span class='text-decoration-line-through'>
<?php echo number_format($p['price'],2)?>$
</span>
<span class='fw-bold fs-5 text-danger'>
<?php echo number_format($p['saleprice'],2)?>$
</span>
<?php echo $p['detail'] ?>
 <?php } else{?>
 <span class='fw-bold fs-5 text-danger'>
<?php echo number_format($p['price'],2)?>$

</span>
 <?php }?>
 <?php ?>
 </div>
 <h2>Sản Phẩm Tương Tự</h2>
 <div class="row">
     <?php foreach($products as $p){ ?>
        <div class="col-4 col-md-4">
        <div class="card-body card-bottom">
        <a href="<?php echo BASE_URL ?>product/productDetail/<?php echo $p['alias']?>" class='text-decoration-none'>
                
                <img src="<?php echo BASE_URL ?>public/upload/<?php echo $p['image']?>" style="height: 150px" alt="productName" class="img-fluid" />
            
           
<h2> <?php echo $p['productName']?></h2>
            <span class='text-decoration-line-through'>
                <?php echo number_format($p['price'],2)?>$
            </span>
            <span class='fw-bold fs-5 text-danger'>
                <?php echo number_format($p['saleprice'],2)?>$
            </span><br/>

            <a class=' btn btn-primary btn-add'
href='<?php echo BASE_URL ?>cart/add/<?php echo $p['productId']?>/<?php echo $p['productName']?>/<?php if ($p['saleprice']<>0) echo $p['saleprice']; else echo $p['price']?>'>
Add to Cart
</a>        
        </div>
        
    </div>
    
        <?php } ?>
        
        
 </div>
