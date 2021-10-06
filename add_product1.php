<?php
   include_once'db/connect_db.php';
   session_start();
   if($_SESSION['username']==""){
     header('location:index.php');
   }else{
     if($_SESSION['role']=="Admin"){
       include_once'inc/header_all.php';
     }else{
         include_once'inc/header_all_operator.php';
     }
   }


?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Product
      </h1>
      <hr>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
        <div class="box box-success">
            <div class="box-header with-border">
                <h3 class="box-title">Enter New Product</h3>
            </div>
            <form action="test.php" method="POST" name="form_product"
                enctype="multipart/form-data" autocomplete="off">
                <div class="box-body">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="">Product Code</label><br>
                            <span class="text-muted">*Make sure the product code is correct</span>
                            <input type="text" class="form-control"
                            name="product_code">
                        </div>
                        <div class="form-group">
                            <label for="">Product Name</label>
                            <input type="text" class="form-control"
                            name="product_name">
                        </div>
                        <div class="form-group">
                            <label for="">Category</label>
                            <select class="form-control" name="category" required>
                                <?php
                                $select = $pdo->prepare("SELECT * FROM tbl_category");
                                $select->execute();
                                while($row = $select->fetch(PDO::FETCH_ASSOC)){
                                    extract($row)
                                ?>
                                    <option><?php echo $row['cat_name']; ?></option>
                                <?php
                                }
                                ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="">Buying Price</label>
                            <input type="number" min="1000" step="1000"class="form-control"
                            name="purchase_price" required>
                        </div>
                        <div class="form-group">
                            <label for="">Selling price</label>
                            <input type="number" class="form-control"
                            name="sell_price" required>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="">Stock</label><br>
                            <span class="text-muted">*Unit according to product</span>
                            <input type="number" min="1" step="1"
                            class="form-control" name="stock" required>
                        </div>
                        <div class="form-group">
                            <label for="">Minimum Stock</label><br>
                            <input type="number" min="1" step="1"
                            class="form-control" name="min_stock" required>
                        </div>
                        <div class="form-group">
                            <label for="">Unit</label>
                            <select class="form-control" name="satuan" required>
                                <?php
                                $select = $pdo->prepare("SELECT * FROM tbl_satuan");
                                $select->execute();
                                while($row = $select->fetch(PDO::FETCH_ASSOC)){
                                    extract($row)
                                ?>
                                    <option><?php echo $row['nm_satuan']; ?></option>
                                <?php
                                }
                                ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="">Product Description</label>
                            <textarea name="description" id="description"
                            cols="30" rows="10" class="form-control" required></textarea>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="">Product Picture</label><br>
                            <br>
                            <input type="file" class="input-group"
                            name="product_img" onchange="readURL(this);" required> <br>
                            <img id="img_preview" src="upload/<?php echo $row->img?>" alt="Preview" class="img-responsive" />
                        </div>
                    </div>
                </div>

                <div class="box-footer">
                    <button type="submit" class="btn btn-primary"
                    name="add_product">Add Product</button>
                    <a href="product.php" class="btn btn-warning">Return</a>
                </div>
            </form>
        </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

<script type="text/javascript">
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#img_preview').attr('src', e.target.result)
                .width(250)
                .height(200);
            }

            reader.readAsDataURL(input.files[0]);
        }
    }
</script>

 <?php
    include_once'inc/footer_all.php';
 ?>