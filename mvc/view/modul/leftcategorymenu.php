<?php
$catmodel=new CategoryModel;
$cats=$catmodel-> getAll(['trash'=>0, 'status'=>1]);
?>
<div class="card">
        <div class="card-header">
          Các loại sản phẩm
        </div>
        <ul class="list-group list-group-flush">
          <?php foreach($cats as $cat){?>
          <li class="list-group-item">
          <a class='text-decoration-none'
          href="<?php echo BASE_URL?>product/productByCat/<?php echo $cat['alias'].'/'.LIMIT.'/0'?>">
          <?php echo $cat['catName']?>
          </a>
          </li>
          <?php } ?>
 
          </ul>
      </div>