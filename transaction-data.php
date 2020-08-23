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

            $query = mysqli_query($con,"SELECT * FROM trades WHERE transaction_id =$transaction_id "); 
            $data = mysqli_fetch_array($query);

        }
    }
?>   

<div class="modal-content"> 
    <div class="modal-body d-flex">
        <div class="modal-wrapper">
            <div class="product-single-content col-md-auto">
                <!-- Transaction ID -->
                <h1>Transaction #<?php echo $data['transaction_id']; ?></h1>
                <!-- Buyer -->
                <h4>Buyer:
                    <?php
                        $buyer_query = mysqli_query($con,"SELECT * FROM accounts WHERE id = '". $data['buyer_id'] ."' AND access='Buyer'"); 
                        $buyer_name = mysqli_fetch_array($buyer_query);
                        echo $buyer_name['username'];
                    ?>
                </h4>
                <h4>Trucker:
                    <?php
                        $trucker_query = mysqli_query($con,"SELECT * FROM truckers WHERE truck_id = '". $data['trucker_id'] ."'"); 
                        $trucker_name = mysqli_fetch_array($trucker_query);
                        echo $trucker_name['truck_operator'];
                    ?>
                </h4>
                <h4>Product:
                    <?php
                        $product_query = mysqli_query($con,"SELECT * FROM products WHERE product_id = '". $data['product_id'] ."'"); 
                        $product_name = mysqli_fetch_array($product_query);
                        echo $product_name['product_name'];
                    ?>
                </h4>
                <h4>
                    Product Volume: <?php echo $data['product_volume']?>
                </h4>
                <h4>
                    Location: <?php echo $data['location']?>
                </h4>
                <h4>
                    Pick-up time: <?php echo $data['pickup_time']?>
                </h4>
                <!-- Trucker -->
                <h4>Money from Transaction: $<?php echo $data['money'];  ?></h4> <!-- Money -->
                <span>Notes:</span>
                <p><?php echo $data['notes']; ?></p> <!-- Notes -->
            </div>
        </div>
    </div>
</div>