<?php
class AuthModel extends BaseModel{
protected $table=DB_PREFIX.'admin';
public function adminLogin()
{
 //hung du lieu
 $username=$_POST['inputUsername'];
 /* $password=md5(md5($_POST['inputPassword'])); */
 $password=$_POST['inputPassword'];
 //Lay user tu bang admin

 $u=$this->get(['username'=>$username,'trash'=>0]);
 // Kiem tra pass
 if(isset($u)&&($u['pass']==$password))
 {
 $_SESSION['username']=$username;
 $_SESSION['level']=$u['level'];
 header('Location:'.BASE_URL.'dashboard/home');
 exit;
 }
 else
 {
 $_SESSION['msg']='Dang nhap that bai';
 header('Location:'.BASE_URL.'auth/adminlogin');
 exit;
 }
}


public function adminDangki()
{
 //hung du lieu
 $username=$_POST['inputUsername'];
 /* $password=md5(md5($_POST['inputPassword'])); */
 $email=$_POST['inputEmail'];
 $password=$_POST['inputPassword'];
 //Lay user tu bang admin

 $u=$this->get(['username'=>$username,'trash'=>0]);
 // Kiem tra pass
 if(isset($u)&&($u['pass']==$password))
 {
 $_SESSION['username']=$username;
 $_SESSION['level']=$u['level'];
 header('Location:'.BASE_URL.'auth/adminlogin');
 exit;
 }
 else
 {
 $_SESSION['msg']='Dang ky that bai';
 header('Location:'.BASE_URL.'auth/admindangki');
 exit;
 }
}
}
?>
