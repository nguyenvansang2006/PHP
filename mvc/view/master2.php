<?php  require_once PATH_TO_MODUL.'header.php'; ?>
<?php  require_once PATH_TO_MODUL.'slide.php'; ?>
<?php require_once PATH_TO_MODUL.'cart.php';?>
<div class="container mt-4">
<?php include_once PATH_TO_VIEW.$viewname.'.php'; ?>

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