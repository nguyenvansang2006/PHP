<?php
$brandmodel=new BrandModel;
$brands=$brandmodel->getAll(['trash'=>0, 'status'=>1]);
$catmodel=new CategoryModel;
$cats=$catmodel->getAll(['trash'=>0, 'status'=>1]);
$linkmodel=new LinkModel();
$links=$linkmodel -> getAll(['trash'=>0, 'status'=>1,'position'=>'globalnav']);

$imgmodel=new ImgModel;
$images=$imgmodel->getAll(['trash'=>0, 'status'=>1, 'position'=>3]);
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>SANG</title>
  <link rel="stylesheet" href="<?php echo BASE_URL; ?>public/css/bootstrap.min.css">
  <script src="<?php echo BASE_URL; ?>public/js/popper.min.js"></script>
  <script src="<?php echo BASE_URL; ?>public/js/bootstrap.min.js"></script>
  <script src="<?php echo BASE_URL; ?>public/font/fb3aa5052d.js" ></script>
</head>
<body>
<header class="container">
    <div class="row">
        <div class="col-md-4"><img src="<?php echo BASE_URL.'public/upload/'.$images[0]['image'] ?>" alt="brand"></div>
                  <div class="col-md-4"> <form class="d-flex" method=post
                  action="<?php echo BASE_URL?>product/productsearch/<?php echo LIMIT.'/0'?>">
                  <input class="form-control me-2" type="search" name=searchKey
                  placeholder="Search" aria-label="Search">
                  <input type='submit' class="btn btn-outline-success" type="submit"/>  </input>
                  </form></div>

          <div class="col-md-4">
          <span data-bs-toggle="modal" data-bs-target="#exampleModal">
 <i class="fas fa-shopping-cart" id=carticon></i>

</span>
          <a href="<?php echo BASE_URL?>auth/adminlogin/"button class="btn btn-primary" >Đăng nhập</button></a></div>
          <div class="col">
            <nav class="navbar navbar-expand-lg bg-light">
                <div class="container-fluid">
                  <a class="navbar-brand" href="#">Mercedes-Benz</a>
                  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                      <li class="nav-item">
                      <a class="nav-link active" aria-current="page"

                      href="<?php echo BASE_URL?>product/home/<?php echo LIMIT.'/0'?>">
                      Trang chủ</a>
                      
                      </li>
                      <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                          Sản phẩm
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                          <?php foreach($cats as $cat){?>
                          <li><a class="dropdown-item"
                          href="<?php echo BASE_URL?>product/productByCat/<?php echo $cat['alias'].'/'.LIMIT.'/0'?>">
                          <?php echo $cat['catName'] ?>
                          </a></li>
                          <?php }?>

                          
                        </ul>
                      </li>
                      <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                          Thương hiệu
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown2">
                        <?php foreach($brands as $brand){?>
                        <li><a class="dropdown-item"
                        href="<?php echo BASE_URL?>product/productByBrand/<?php echo $brand['alias']. 
                        '/'.LIMIT.'/0'?>"><?php echo $brand['brandName']?>
                        </a></li>
                        <?php }?>
                          
                        </ul>
                      </li>
                      <?php foreach($links as $link){?>
                      <li class="nav-item">
                      <a class="nav-link active" aria-current="page"
                      href="<?php echo BASE_URL?>page/gioithieu">
                      <?php echo $link['title']?></a>
                      </li>
                      <?php }?>
                  </div>
                </div>
              </nav>
          </div>
    </div>
    
</header>