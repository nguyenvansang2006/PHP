<?php
 $cats=$data['cats'];
 $brands=$data['brands'];
 $oldproduct= $data['oldproduct'];
?>
<div class="col-md-9">
<h2>UPDATE PRODUCT</h2>
 <div class="row btn-success">

<?php if(isset($_SESSION['msg'])){ echo $_SESSION['msg']; unset($_SESSION['msg']);}?>
 </div>

 <div class="row">
 <form action='' method=post enctype="multipart/form-data">
 <table>
 <tr>
 <td class=col-md-3><label for="inputProductName">ProductName</label></td>
 <td><input type="text" name=inputProductName required value='<?php echo $oldproduct['productName'];?>'></td>
 </tr>
 <tr>
 <td><label for="input">alias</label></td>
 <td><input type="text" name='inputAlias' value='<?php echo $oldproduct['alias'];?>'></td>
 </tr>
 <tr>
 <td><label for="inputCatId">Cat Name</label></td>
 <td>
 <select name="inputCatId" id="inputCatId">
 <?php foreach($cats as $cat){?>
 <option value="<?php echo $cat['catId']?>" <?php if($cat['catId']==$oldproduct['catId']) echo 'selected'?>><?php echo $cat['catName']?></option>
 <?php }?>
 </select>
 </td>
 </tr>
 <tr>
 <td><label for="inputBrandId">Brand Name</label></td>
 <td>
 <select name="inputBrandId" id="inputBrandId">
 <?php foreach($brands as $brand){?>
 <option value="<?php echo $brand['brandId']?>" <?php if($brand['brandId']==$oldproduct['brandId']) echo 'selected'?>><?php echo $brand['brandName']?></option>
 <?php }?>
 </select>
 </td>
 </tr>
 <tr>
 <td><label for="inputFileUpload">Image</label></td>
 <td><input type="file" name=inputFileUpload> (Hình cũ:<?php echo $oldproduct['image'];?>)</td>
 </tr>
 <tr>
 <td><label for="inputStatus">Status</label></td>
 <td>

 <select name="inputStatus" id="inputStatus" required>
 <option value=0 <?php if($oldproduct['status']==0) echo 'selected'?>>Ẩn</option>
 <option value=1 <?php if($oldproduct['status']==1) echo 'selected'?>>Hiện</option>
 </td>
 
 </tr>
 <td><label for="inputTrash">Trash</label></td>
 <td>
 <select name="inputTrash" id="inputTrash" required>
 <option value=0 <?php if($oldproduct['trash']==0) echo 'selected'?>>Không</option>
 <option value=1 <?php if($oldproduct['trash']==1) echo 'selected'?> >Một</option>
 </td>
 
 </tr>
 <tr>
 <td><label for="inputDetail" >Chi tiết sản phẩm</label></td>
 <td>
 <textarea required name="inputDetail" id="inputDetail" cols="80" rows="10"><?php echo $oldproduct['detail']?></textarea>
 </td>
 </tr>
 <tr>
 <td><label for="inputPrice">Price</label></td>
 <td><input type="number" name='inputPrice' step='0.01' max=3000 min=1 value=
<?php echo $oldproduct['price']?>></td>
 </tr>
 <tr>
 <td><label for="inputsalePrice"> Sale Price</label></td>
 <td><input type="number" name='inputSalePrice' step='0.01' max=3000 min=1 value=<?php echo $oldproduct['saleprice']?>> </td>
 </tr>
 <tr>
 <td><input type="submit" name='submit' value=Submit>
 <input type="reset" name='reset' value=Reset>
 </td>
 </tr>
 </table>
 </form>
 </div>
</div>

