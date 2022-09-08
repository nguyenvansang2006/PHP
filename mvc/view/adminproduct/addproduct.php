<?php
 $cats=$data['cats'];
 $brands=$data['brands'];
?>
<div class="col-md-9">
<h2>ADD PRODUCT</h2>
 <div class="row btn-success">
<?php if(isset($_SESSION['msg'])) {echo $_SESSION['msg']; unset($_SESSION['msg']);}?>
 </div>

 <div class="row">
 <form action='' method=post enctype="multipart/form-data">


    
 <tr>
 <td class=col-md-3><label for="inputProductName">ProductName</label></td>
 <td><input type="text" name=inputProductName required></td>
 </tr>
 <tr>
 <td><label for="input">alias</label></td>
 <td><input type="text" name='inputAlias'></td>
 </tr>
 <tr>
 <td><label for="inputCatId">Cat Name</label></td>
 <td>
 <select name="inputCatId" id="inputCatId">
 <?php foreach($cats as $cat){?>
 <option value="<?php echo $cat['catId']?>"><?php echo $cat['catName']?></option>
 <?php }?>
 </select>
 </td>
 </tr>
 <tr>
 <td><label for="inputBrandId">Brand Name</label></td>
 <td>
 <select name="inputBrandId" id="inputBrandId">
 <?php foreach($brands as $brand){?>
 <option value="<?php echo $brand['brandId']?>"><?php echo $brand['brandName']?></option>
 <?php }?>
 </select>
 </td>
 </tr>
 <tr>
 <td><label for="inputFileUpload">Image</label></td>
 <td><input type="file" name=inputFileUpload></td>
 </tr>
 <td><label for="inputStatus">Status</label></td>
 <td>
 <select name="inputStatus" id="inputStatus" required>
 <option value=0>Ẩn</option>
 <option value=1>Hiện</option>
 </td>
 
 </tr>
 <tr>
 <td><label for="inputDetail" >Chi tiết sản phẩm</label></td>
 <td>
 <textarea required name="inputDetail" id="inputDetail" cols="80" rows="10"  placeholder="Chi tiết sản phẩm" ></textarea>
 </td>
 </tr>
 <tr>
 <td><label for="inputPrice">Price</label></td>
 <td><input type="number" name='inputPrice' step='0.01' max=3000 min=></td>
 </tr>
 <tr>
 <td><label for="inputsalePrice"> Sale Price</label></td>
 <td><input type="number" name='inputSalePrice' step='0.01' max=3000 min=1> </td>
 </tr>
 <tr>
 <td><input type="submit" name='submit' value=Submit>
 <input type="reset" name='reset' value=Reset>
 </td>
 </tr>
 

 </form>
 </div>
</div>

 
