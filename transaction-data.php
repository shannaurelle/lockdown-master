<?php
    
    $transaction_id = filter_var($_POST['transaction_id'],FILTER_SANITIZE_NUMBER_INT);

    $response = '';

    $con=mysqli_connect("localhost", "root", "");

    if (mysqli_connect_errno()){

        echo "Failed to connect to MySQL: " . mysqli_connect_error();

    }

    else{

        session_start();

        mysqli_select_db($con, 'lockdown-storage');

        if(isset($transaction_id)){

            $query = mysqli_query($con,"SELECT * FROM trades WHERE transaction_id =$transaction_id"); 
            $data = mysqli_fetch_array($query);

        }
    }
?>   

<div class="modal-content"> 
    <div class="modal-body d-flex">
        <div class="modal-wrapper">
            <div class="product-single-content col-md-auto">
                <!-- Transaction ID -->
                <h1 class="mb-4">Transaction #<?php echo $data['transaction_id']; ?></h1>
                <!-- Buyer -->
                <div class="row">
                    <div class="col"><label for="Buyer">Buyer:</label></div>
                    <div class="col">
                        <strong>
                        <?php
                            $buyer_query = mysqli_query($con,"SELECT * FROM accounts WHERE account_id = '". $data['buyer_id'] ."' AND access='Buyer'"); 
                            $buyer_name = mysqli_fetch_array($buyer_query);
                            echo $buyer_name['username'];
                        ?>
                        </strong>
                    </div>
                </div>
                <div class="row">
                    <div class="col"><label for="Trucker">Trucker:</label></div>
                    <div class="col">
                        <strong>
                        <?php
                            $trucker_query = mysqli_query($con,"SELECT * FROM truckers WHERE truck_id = '". $data['trucker_id'] ."'"); 
                            $trucker_name = mysqli_fetch_array($trucker_query);
                            echo $trucker_name['truck_operator'];
                        ?>
                        </strong>
                    </div>
                </div>
                <div class="row">
                    <div class="col"><label for="Product">Product:</label></div>
                    <div class="col">
                        <strong>
                        <?php
                            $product_query = mysqli_query($con,"SELECT * FROM products WHERE product_id = '". $data['product_id'] ."'"); 
                            $product_name = mysqli_fetch_array($product_query);
                            echo $product_name['product_name'];
                        ?>
                        </strong>
                    </div>
                </div>
                <div class="row">
                    <div class="col"><label for="Product Volume">Product Volume: </label></div>
                    <div class="col"> <strong> <?php echo $data['product_volume']?> </strong> </div>
                </div>
                <div class="row">
                    <div class="col"><label for="Product Packaging">Product Packaging: </label></div>
                    <div class="col"> <strong> <?php echo $product_name['product_packaging']?> </strong> </div>
                </div>
                <div class="row">
                    <div class="col"><label for="Weight per Packaging">Units per Packaging: </label></div>
                    <div class="col"> 
                        <strong> 
                            <?php echo $product_name['product_qty_per_package']." ".$product_name['product_unit_measurement']?> 
                        </strong> 
                    </div>
                </div>
                <div class="row">
                    <div class="col"><label for="Pickup Location">Pickup Location: </label></div>
                    <div class="col"> <strong> <?php echo $data['pickup_location']?> </strong> </div>
                </div>
                <div class="row">
                    <div class="col"><label for="Pick-up time">Pick-up time: </label></div>
                    <div class="col"> 
                        <strong> 
                            <?php 
                            $datetime = date_create($data['pickup_time']);
                            $date_string = date_format($datetime, "F d, Y  l");
                            echo $date_string;
                            ?> 
                        </strong> 
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>