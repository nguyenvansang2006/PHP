<?php
class ProductModel extends BaseModel{
 protected $table=DB_PREFIX.'product';

 protected $key='productId';
 public function home($limit=LIMIT,$offset=OFFSET){
    //Lấy sản phẩm sale được hiển thị
    $sql=" select * from $this->table where status= 1 and trash = 0 and saleprice<>0 limit $offset, $limit";
    $data['products']=$this->queryAll($sql);
    //Lấy tổng số sản phẩm sale
    $sql=" select * from $this->table
    where status=1 and trash= 0 and saleprice<>0";
    $totalRecords=count($this->queryAll($sql));
    //Chuẩn bị paging
    $data['paging']=new paging('product/home/',$totalRecords,$limit,$offset);
    
    return $data;
    }
    public function productByCat($catAlias,$limit=LIMIT,$offset=OFFSET){
        //Lấy nhóm sản phẩm
        $categorymodel=new CategoryModel;
        $cat=$categorymodel->get(['alias'=>$catAlias]);
        //Lấy sản phẩm trong nhóm      
        $data['products']=
       $this->getAllLimit(['status'=>1,'trash'=>0,'catId'=>$cat['catId']],$limit, $offset);
        $data['cat']=$cat;
        //Tính tổng số sản phẩm
        $totalRecords=count($this->getAll(['status'=>1,'trash'=>0,'catId'=>$cat['catId']]));
        // Chuẩn bị Paging
        $data['paging']=
       new Paging('product/productbycat/'.$catAlias.'/',$totalRecords,$limit,$offset);
        return $data;
        }
        public function productByBrand($brandAlias,$limit=LIMIT,$offset=OFFSET){
            //Lấy brand sản phẩm
            $brandmodel=new BrandModel;
            $brand=$brandmodel->get(['alias'=>$brandAlias]);
            //Lấy các sản phẩm trong brand
            $data['products']=
           $this->getAllLimit(['brandId'=>$brand['brandId'],'status'=>1,'trash'=>0], $limit,$offset);
            $data['brand']=$brand;
            //Tính tổng số sản phẩm
            $totalRecords=count($this->getAll(['status'=>1,'brandId'=>$brand['brandId'],'trash'=>0]));
            // Chuẩn bị Paging
            $data['paging']=
           new Paging('product/productbybrand/'.$brandAlias.'/',$totalRecords,$limit,$offset);
            return $data;
            }
            public function productSearch($searchKey,$limit=LIMIT,$offset=0){
                //Lấy thông tin các sản phẩm tìm thấy được hiển thị
                $sql=" select * from $this->table
                where status=1 and trash=0 and productName like '%$searchKey%'
                order by productId limit $offset, $limit" ;
                $data['products']= $this->queryAll($sql);
                //Tính tổng số sản phẩm tìm thấy
                $sql=" select * from $this->table
                where status=1 and trash=0 and productName like '%$searchKey%'
                order by productId" ;
                $totalRecords=count($this->queryAll($sql));
                // Chuẩn bị Paging
                $data['paging']=new paging('product/productSearch/',$totalRecords,$limit,$offset);
                return $data;
                }
                public function productDetail($productAlias){
                    //Lấy sản phẩm 
                    $data['currentProduct']=$this->get(['alias'=>$productAlias]);
                    $currentCatId=$data['currentProduct']['catId'];
                    //Lấy sản phẩm tương tự
                   
                    $data['sameProducts']=$this->getAllLimit(['status'=>1,'trash'=>0,'catId'=>$currentCatId],LIMIT,0);
                    return $data;
                    }
                   
            
               
}
?>
