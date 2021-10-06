<?php

if (isset($_POST['add_product'])) {
    //
//
    $im = $_FILES['product_img'];
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
    $allowed = array('jpg, jpeg', 'png', 'gif');
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
                    //Success message.
                    echo 'Upload is successful';
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
    }
}

