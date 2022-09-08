

<?php require_once PATH_TO_MODUL.'header.php'; ?>
<?php require_once PATH_TO_MODUL.'slide.php'; ?>

<div class="container mt-3">
  <div class="row">


  <div class="row">

<div class="col-md-4"><img src="<?php echo BASE_URL?>public/img/admin.jpg" style="height: 50px" alt="brand"></div>
<div class="col-md-4"></div>
<div class="col-md-4">
<?php echo "Xin chào ".$_SESSION['username']?> 
<button class='btn-primary'> 
<a class='btn btn-primary' href='<?php echo BASE_URL ?>auth/adminLogout'>Đăng xuất</a></button>
</div>
</div>

  
    <div class="col-md-3">
           <div class="card-header">Danh Mục Sản phẩm</div>
            <ul class="list-group list-group-flush">
             <li class="list-group-item">
               <a href="<?php echo BASE_URL; ?>adminproduct/productList/<?php echo LIMIT.'/0'?>"
                 class="nav-link btn btn-succes">Xem sản phẩm</a>
                </li>
               <li class="list-group-item">
                <a href="<?php echo BASE_URL; ?>adminproduct/Addproduct/<?php echo LIMIT.'/0'?>"
                 class="nav-link btn btn-succes">Thêm sản phẩm</a>
                  </li>
                 
                 <li class="list-group-item">
                  <a href="<?php echo BASE_URL; ?>adminproduct/updateproduct/<?php echo LIMIT.'/0'?>"
                    class="nav-link btn btn-succes">Cập nhật sản phẩm</a>
                 </li>
                 <li class="list-group-item">
                  <a href="<?php echo BASE_URL; ?>adminproduct/productListIntrash/<?php echo LIMIT.'/0'?>"
                    class="nav-link btn btn-success">Xem thùng rác</a>
                 </li>
                   </ul>
                 </div>
         


               <table>  
    
    <div class="col-md-9">
      <?php include_once PATH_TO_VIEW.$view.'.php';?>

</table>
</div>
  </div>
</div>
<footer class="container-fluid bg-dark">
    <div class="row">
    <?php  require_once PATH_TO_MODUL.'bottommenu1.php'; ?>
    <?php  require_once PATH_TO_MODUL.'bottommenu2.php'; ?>
      <div class="col-md-2 p-5" >
        <ul class="fa-ul">
          <li><a class="text-decoration-none" href="#"><i class="fa-li fa fa-facebook"></i> Facebook</a></li>
          <li><a class="text-decoration-none" href="#"><i class="fa-li fa fa-twitter"></i> Twitter</a></li>
          <li><a class="text-decoration-none" href="#"><i class="fa-li fa fa-linkedin"></i> LinkedIn</a></li>
          <li><a class="text-decoration-none" href="#"><i class="fa-li fa fa-google-plus"></i> Google+</a></li>
        </ul>
        
      </div>
    </div>
</footer>
<?php require_once PATH_TO_MODUL.'cart.php'; ?>
</body>
</html>