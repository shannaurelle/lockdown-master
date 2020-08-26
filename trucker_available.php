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

        echo $_SESSION['account_id'];

        if(isset($transaction_id)){

            $query = mysqli_query($con,"SELECT * FROM truckers WHERE owner_id = '" . $_SESSION['account_id']."'"); 

        }
    }
?>   

<div class="modal-content"> 
    <div class="modal-body d-flex">
        <div class="modal-wrapper">
            <div class="product-single-content col-md-auto">
                <h1>Select which truck to use for request.</h1>
                <table class="table">
                  <thead>
                        <tr>
                            <th scope="col">Transaction Operator</th>
                            <th scope="col">Origin</th>
                            <th scope="col">Model</th>
                            <th scope="col">Plate Number</th>
                            <th scope="col">Capacity</th>
                            <th scope="col">Service Type</th>
                            <th scope="col">Action</th>
                        </tr>
                  </thead>
                  <tbody>
                    <?php
                        while($data = mysqli_fetch_array($query)){
                        echo "<tr>";
                        echo "<th scope='row'>" . $data['truck_operator'] . "</th>";
                        echo "<td>" . $data['truck_origin'] . "</td>";
                        echo "<td>" . $data['truck_model'] . "</td>";
                        echo "<td>" . $data['truck_plate_number'] . "</td>";
                        echo "<td>" . $data['truck_capacity'] . "</td>";
                        echo "<td>" . $data['truck_service_type'] . "</td>";
                        echo "<td><a href='accept_request.php?truck_id=".$data['truck_id']."&transaction_id=$transaction_id' type='submit' class='badge badge-light'>Select this truck</a></td>";
                        echo "</tr>";
                    }
                    ?>
                  </tbody>
                </table>
            </div>
        </div>
    </div>
</div>