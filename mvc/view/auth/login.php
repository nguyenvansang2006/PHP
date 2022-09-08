<?php 
if(!empty($_SESSION['msg'])) {echo $_SESSION['msg'];unset($_SESSION['msg']);}
?>
<form action="<?php echo BASE_URL?>auth/adminLogin/" method=post>
<form class="row g-3">
  <div class="col-md-6">
    <table>
        <tr>
        <td>Username</td><td><input type="text" name=inputUsername></td>
        </tr>
        <tr>
        <td>Password</td><td><input type="password" name= inputPassword></td>
        </tr>
        <tr>
        <td colspan=2><input type="submit" name='login' value="Login"> <input type="Reset" 
        value=Reset></td>
        <td> <a href='<?php echo BASE_URL ?>auth/adminDangki'> Đăng ký</a></td>
        </tr>
    </table>
</form>