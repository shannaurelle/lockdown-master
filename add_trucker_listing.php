<?php

    $con=mysqli_connect("localhost", "root", "");
    if (mysqli_connect_errno()){
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }
    else{
        session_start();
        if ($_SESSION['access'] != 'Trucker') {
            header('Location: error_pages/404.html');
        }
    }
?>

<!doctype html>
<html class="no-js" lang="">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Lockdown - Add Listing</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="assets/images/logo_lockdown_2.ico">
    <!-- Place favicon.ico in the root directory -->
    <!-- all css here -->
    <!-- bootstrap v3.3.7 css -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <!-- owl.carousel.2.0.0-beta.2.4 css -->
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <!-- font-awesome v4.6.3 css -->
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <!-- flaticon.css -->
    <link rel="stylesheet" href="assets/css/flaticon.css">
    <!-- jquery-ui.css -->
    <link rel="stylesheet" href="assets/css/jquery-ui.css">
    <!-- metisMenu.min.css -->
    <link rel="stylesheet" href="assets/css/metisMenu.min.css">
    <!-- slicknav.min.css -->
    <link rel="stylesheet" href="assets/css/slicknav.min.css">
    <!-- swiper.min.css -->
    <link rel="stylesheet" href="assets/css/swiper.min.css">
    <!-- style css -->
    <link rel="stylesheet" href="assets/css/styles.css">
    <!-- responsive css -->
    <link rel="stylesheet" href="assets/css/responsive.css">
    <!-- modernizr css -->
    <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <!--Start Preloader-->
    <div class="preloader-wrap">
        <div class="spinner"></div>
    </div>
    <?php include("navbar.php"); ?>
    <!-- .breadcumb-area start -->
    <div class="breadcumb-area bg-img-1 black-opacity ptb-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcumb-wrap text-center">
                        <h2 class="text-dark mb-4 mt-0">Add Listing</h2>
                        <ul>
                            <li><a href="index.html">Home</a></li>
                            <li><a href="trucker_main.php" class="text-dark">Trucking Services</a></li>
                            <li><a href="trucker_pending_trades.php">Pending Trades</a></li>
                            <li><a href="trucker_previous_transactions.php">Past Transactions</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- .breadcumb-area end -->
    <!-- checkout-area start -->
    <div class="account-area ptb-100">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3 col-md-8 offset-md-2 col-12">
                    <div class="account-form form-style">
                      <form method="post" enctype="multipart/form-data" action="add_trucker.php">
                        <span>* - required details</span>
                        <hr>
                        <p><strong>Truck Model*</strong></p>
                        <input type="text" class="form-control" name="truck_model">
                        <p><strong>Plate Number*</strong></p>
                        <input type="text" class="form-control" name="plate_number">
                        <p><strong>Route*</strong></p>
                        <input type="text" class="form-control" name="truck_route">
                        <p><strong>Available volume capacity (in kg)*</strong></p>
                        <input type="number" class="form-control" name="available_volume">
                        <p><strong>Type of Service Available*</strong></p>
                        <div class="row ml-4 mt-4">
                            <label for="Refrigerated">With refrigeration</label>
                            <input type="radio" name="service_type" value="Refrigerated">
                            <label for="Normal">No refrigeration</label>
                            <input type="radio" name="service_type" value="Normal">
                        </div>
                        <p><strong>Name of Truck Driver*</strong></p>
                        <input type="text" class="form-control" name="driver_name">
                        <p><strong>Price of Service per Delivery (in Philippine Pesos)*</strong></p>
                        <div class="input-group mb-3">
                          <input type="number" class="form-control" placeholder="0" aria-label="0" aria-describedby="basic-addon1">
                        </div>
                        <p><strong>Picture of Driver's License (optional)</strong></p>
                        <input type="file" name="driver_license" aria-label="0" aria-describedby="basic-addon1">
                        <p><strong>Picture of Truck together with the License Plate (optional)</strong></p>
                        <input type="file" name="truck_photos[]" aria-label="0" aria-describedby="basic-addon1" multiple>
                        <button type="submit" formaction="add_trucker.php">SIGN IN</button>
                      </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php include("footer.php") ?>
    <!-- jquery latest version -->
    <script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
    <!-- bootstrap js -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- owl.carousel.2.0.0-beta.2.4 css -->
    <script src="assets/js/owl.carousel.min.js"></script>
    <!-- mouse_scroll.js -->
    <script src="assets/js/mouse_scroll.js"></script>
    <!-- scrollup.js -->
    <script src="assets/js/scrollup.js"></script>
    <!-- slicknav.js -->
    <script src="assets/js/slicknav.js"></script>
    <!-- jquery.zoom.min.js -->
    <script src="assets/js/jquery.zoom.min.js"></script>
    <!-- swiper.min.js -->
    <script src="assets/js/swiper.min.js"></script>
    <!-- metisMenu.min.js -->
    <script src="assets/js/metisMenu.min.js"></script>
    <!-- mailchimp.js -->
    <script src="assets/js/mailchimp.js"></script>
    <!-- jquery-ui.min.js -->
    <script src="assets/js/jquery-ui.min.js"></script>
    <!-- main js -->
    <script src="assets/js/scripts.js"></script>
</body>

</html>