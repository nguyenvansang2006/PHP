<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Dang Nhap</title>
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="https://kit.fontawesome.com/c73e83578b.js" crossorigin="anonymous"></script>
</head>
<body>
<header class="container">
    <div class="row">
    <div class="col-md-4"><img src="<?php echo BASE_URL; ?>public/upload/download.png" style="height: 40px;" class='img-fluid' alt="" /></div>
        <!-- <div class="col-md-4"><img src="img/download.png" alt="brand"></div> -->
</div>
          
    
</header>

<div class="container">
  
<?php include_once PATH_TO_VIEW.$viewname.'.php';
 ?>
      
</div>
<footer class="container-fluid bg-dark">
    
</footer>
</body>
</html>