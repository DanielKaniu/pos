<?php

include_once'db/connect_db.php';
session_start();

if (isset($_POST['add_product'])) {
    //
    $code = $_POST['product_code'];
//    $code = '111';
    $product = $_POST['product_name'];
//    $product = "kentionary";
    $category = $_POST['category'];
//    $category = 'book';
    $purchase = $_POST['purchase_price'];
//    $purchase = '1000';
    $sell = $_POST['sell_price'];
//    $sell = '2000';
    $stock = $_POST['stock'];
//    $stock = '100';
    $min_stock = $_POST['min_stock'];
//    $min_stock = '50';
    $satuan = $_POST['satuan'];
//    $satuan = 'set';
    $desc = $_POST['description'];
//    $desc = 'Best book';
    //
//
//
//Get the image name, e.g., Kenya.jpg.
    $img = $_FILES['product_img']['name'];
//
//Get the temporary storage of a file/image.
    $img_tmp = $_FILES['product_img']['tmp_name'];
//                                                                                                                                                                                                                  
//Get the image size.
    $img_size = $_FILES['product_img']['size'];
    //
    //Check if there is any error uploading the file.
    $img_error = $_FILES['product_img']['error'];
//
//Get the image extension by exploding the image name into such 
//an array, [Kenya
    $img_ext = explode('.', $img);
    $img_ext = strtolower(end($img_ext));
    //
    //
    $allowed = array('jpg', 'jpeg', 'png', 'gif');
    //
    //Check if the file type provided is what is recommended in the array(jpg etc).
    if (in_array($img_ext, $allowed)) {
        //
        //Check if there is an error uploading the file.
        if ($img_error === 0) {
            //
            //Weigh the file size.
            if ($img_size < 2000000) {
                //
                //
                $img_new = uniqid('', true) . '.' . $img_ext;
                //
                //File destination.
                $store = "/home/hallelujah/Documents/projects/pos1/uploads/" . $img_new;
                //
                //Move the file to the new destination.
                if (move_uploaded_file($img_tmp, $store) === true) {
                    //
                    //
                    $product_img = $img_new;
                    //
                    //
                    $insert = $pdo->prepare("INSERT INTO tbl_product (product_code,product_name,product_category,purchase_price,sell_price,stock,min_stock,product_satuan,description,img)
                            values (:product_code,:product_name,:product_category,:purchase_price,:sell_price,:stock,:min_stock,:satuan,:desc,:img)");

                    $insert->bindParam(':product_code', $code);
                    $insert->bindParam(':product_name', $product);
                    $insert->bindParam(':product_category', $category);
                    $insert->bindParam(':purchase_price', $purchase);
                    $insert->bindParam(':sell_price', $sell);
                    $insert->bindParam(':stock', $stock);
                    $insert->bindParam(':min_stock', $min_stock);
                    $insert->bindParam(':satuan', $satuan);
                    $insert->bindParam(':desc', $desc);
                    $insert->bindParam(':img', $product_img);

                    if ($insert->execute()) {
                        echo'Product Saved Successfully';
                        header('location:product.php');
                    } else {
                        echo '<script type="text/javascript">
                                        jQuery(function validation(){
                                        swal("Error", "There is an error", "error", {
                                        button: "Continue",
                                            });
                                        });
                                        </script>';
                        ;
                    }
                    try {

                        var_dump($insert->execute());
                        //
                        //
                        echo '<br>'.'<br>'.'Product Code already exists';
                    } catch (Exception $exc) {
                        echo $exc->getMessage();
                    }
                                    
                }
            } else {
                //
                //Error found.
                echo 'File is too big';
            }
        } else {
            //
            //Error found.
            echo "There's an error uploading file";
        }
    } else {
        //
        //
        echo 'Image type not recognized';
    }
}
else{
    echo 'Add_product button not set';
}

