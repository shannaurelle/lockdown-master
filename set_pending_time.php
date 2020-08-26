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
            <div class="row mx-auto">
                <!-- Transaction ID -->
                <h1>Set Schedule</h1>
                <!-- Buyer -->
            </div>
            <form class="container-fluid mx-auto" method="post" action="set_time.php">
                <input type="text" name="transaction_id" value=<?php echo $data['transaction_id']; ?> hidden/>
                <div class="form-row mt-4">
                    <div class="col-7"><label for="Pickup Date" class="form-label">Pickup Date</label></div>
                </div>
                <div class="form-row mt-2">
                        <div class="col-4">
                            <select id="year" name="year" class="form-control" oninput="this.className = 'form-control'">
                            <option value="2020">2020</option>
                            <option value="2021">2021</option>
                            <option value="2022">2022</option>
                            <option value="2023">2023</option>
                            <option value="2024">2024</option>
                            </select>
                        </div>
                        <div class="col">
                            <select id="month" name="month" class="form-control" oninput="this.className = 'form-control'">
                            <option value="1">January</option>
                            <option value="2">February</option>
                            <option value="3">March</option>
                            <option value="4">April</option>
                            <option value="5">May</option>
                            <option value="6">June</option>
                            <option value="7">July</option>
                            <option value="8">August</option>
                            <option value="9">September</option>
                            <option value="10">October</option>
                            <option value="11">November</option>
                            <option value="12">December</option>
                            </select>
                        </div>
                        <div class="col-3">
                            <select id="day" name="day" class="form-control" oninput="this.className = 'form-control'">
                            <?php for($i = 26; $i < 30; $i++): ?>
                                <option value=<?php echo $i; ?>><?php echo $i; ?></option>
                            <?php endfor; ?>
                            </select>
                        </div>
                </div>
                <div class="form-row mt-4">
                    <div class="col-5"><label for="Time" class="form-label">Time</label></div>
                    <div class="col">
                        <input type="text" class="form-control" name="pickup_time" placeholder=""/>
                    </div>
                    <div class="col">
                        <select type="text" class="form-control" name="pickup_AP">
                            <option value="AM">AM</option>
                            <option value="PM">PM</option>
                        </select>
                    </div>
                </div>
                <div class="form-row mt-4">
                    <div class="col-5"><label for="Time" class="form-label">Location</label></div>
                    <div class="col"><input type="text" class="form-control" name="pickup_location"/></div>
                </div>
                <div class="form-row mt-4">
                    <div class="col mr-4"><label for="Delivery Date" class="form-label">Delivery Date</label></div>
                </div>
                <div class="form-row mt-2">
                        <div class="col-4">
                            <select id="year" name="delivery_year" class="form-control" oninput="this.className = 'form-control'">
                            <option value="2020">2020</option>
                            <option value="2021">2021</option>
                            <option value="2022">2022</option>
                            <option value="2023">2023</option>
                            <option value="2024">2024</option>
                            </select>
                        </div>
                        <div class="col">
                            <select id="month" name="delivery_month" class="form-control" oninput="this.className = 'form-control'">
                            <option value="01">January</option>
                            <option value="02">February</option>
                            <option value="03">March</option>
                            <option value="04">April</option>
                            <option value="05">May</option>
                            <option value="06">June</option>
                            <option value="07">July</option>
                            <option value="08">August</option>
                            <option value="09">September</option>
                            <option value="10">October</option>
                            <option value="11">November</option>
                            <option value="12">December</option>
                            </select>
                        </div>
                        <div class="col-3">
                            <select id="day" name="delivery_day" class="form-control" oninput="this.className = 'form-control'">
                            <?php for($i = 26; $i < 30; $i++): ?>
                                <option value=<?php echo $i; ?>><?php echo $i; ?></option>
                            <?php endfor; ?>
                            </select>
                        </div>
                </div>
                <div class="form-row mt-4">
                    <div class="col-5"><label for="Time" class="form-label">Time</label></div>
                    <div class="col">
                        <input type="text" class="form-control" name="delivery_time" placeholder=""/>
                    </div>
                    <div class="col">
                        <select type="text" class="form-control" name="delivery_AP">
                            <option value="AM">AM</option>
                            <option value="PM">PM</option>
                        </select>
                    </div>
                </div>
                <div class="form-row mt-4">
                    <div class="col"><input type='submit' class="btn btn-success" value='Submit Schedule'></div>
                </div>
            </form>
        </div>
    </div>
</div>
