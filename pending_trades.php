<?php

    $con=mysqli_connect("localhost", "root", "");
    if (mysqli_connect_errno()){
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }
    else{
        session_start();
        if ($_SESSION['access'] != 'Seller') {
            header('Location: error_pages/404.html');
        }
        mysqli_select_db($con, 'lockdown-storage');
        if(isset($_GET['product_id'])){
            $product_id = filter_var($_GET['product_id'],FILTER_SANITIZE_NUMBER_INT);
            $query = mysqli_query($con,"SELECT * FROM products WHERE product_id = '". $product_id. "' ");
            $data = mysqli_fetch_array($query);
        }
    }

?>

<!doctype html>
<html class="no-js" lang="">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>TOM - Pending Trades</title>
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
    <!-- open modal on add to cart -->
    
</head>

<body>
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <!--Start Preloader-->
    <div class="preloader-wrap">
        <div class="spinner"></div>
    </div>
    <?php include('navbar.php') ?>

    <!-- header-area end -->
    <!-- .breadcumb-area start -->
    <div class="breadcumb-area bg-img-1 black-opacity ptb-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcumb-wrap text-center">
                        <h2 class="text-dark mb-4 mt-0">Pending Trades</h2>
                        <ul>
                            <li><a href="index.html">Home</a></li>
                            <li><a href="seller_products.php">Seller's List</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row mt-4">
                <form class="mx-auto" action="<?php echo $_SERVER['PHP_SELF']; ?>">
                    <div class="input-group mb-3">
                      <input name="search" type="text" class="form-control mr-4" aria-describedby="basic-addon2">
                      <div class="input-group-append">
                        <button class="btn btn-light">Search</button>
                      </div>
                    </div>
                </form>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="breadcumb-wrap text-center">
                        <ul>
                            <li><a href="previous_transactions.php">Past Transactions</span></li>
                            <li><a href="add_listing.php">Add Listings</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- .breadcumb-area end -->
    <!-- product-area start -->
    <div class="product-area ptb-100">
        <div class="container">
            
            <div class="row">

                <!-- Removed because it might not be needed lole
                <div class="col-sm-9 col-lg-10">
                    <div class="product-menu">
                        <ul class="nav">
                            <li>
                                <a class="active" data-toggle="tab" href="#all">All product</a>
                            </li>
                            <li>
                                <a data-toggle="tab" href="#chair">Chair</a>
                            </li>
                            <li>
                                <a data-toggle="tab" href="#table">Table</a>
                            </li>
                            <li>
                                <a data-toggle="tab" href="#bed">Bed</a>
                            </li>
                            <li>
                                <a data-toggle="tab" href="#decorative">Decorative</a>
                            </li>
                        </ul>
                    </div>
                </div>
                -->
                <div class="col-md-auto col-lg-12">
                    <div class="filter-menu text-right">
                        <a href="javascript:void(0);">Filter</a>
                    </div>
                </div>
            </div>
            <form action="<?php echo $_SERVER['PHP_SELF']; ?>">
                <div class="row filter-active">
                <div class="col-12">
                    <div class="filter-wrap">
                        <div class="row">
                            <div class="product-filter col-lg-3 col-sm-6 col-12">
                                <h3 class="filter-title">Sort by</h3>
                                    <ul class="sort-by">
                                        <li class="form-check">
                                          <input class="form-check-input" type="radio" name="sortbyfilter" value="new" checked>
                                          <label class="form-check-label">
                                            Newness
                                          </label>
                                        </li>
                                        <li class="form-check">
                                          <input class="form-check-input" type="radio" name="sortbyfilter" value="rating">
                                          <label class="form-check-label">
                                            Average rating
                                          </label>
                                        </li>
                                        <li class="form-check">
                                          <input class="form-check-input" type="radio" name="sortbyfilter" value="pricelow">
                                          <label class="form-check-label">
                                            Price: Low to High
                                          </label>
                                        </li>
                                        <li class="form-check">
                                          <input class="form-check-input" type="radio" name="sortbyfilter" value="pricehigh">
                                          <label class="form-check-label">
                                            Price: High to Low
                                          </label>
                                        </li>
                                        <li class="form-check">
                                          <input class="form-check-input" type="radio" name="sortbyfilter" value="volumelow">
                                          <label class="form-check-label">
                                            Volume: Low to High
                                          </label>
                                        </li>
                                        <li class="form-check">
                                          <input class="form-check-input" type="radio" name="sortbyfilter" value="volumehigh">
                                          <label class="form-check-label">
                                            Volume: High to Low
                                          </label>
                                        </li>
                                    </ul>
                            </div>
                            <!-- Product Filter -->
                            <!--
                            <div class="product-filter col-lg-3 col-sm-6 col-12">
                                <h3 class="filter-title">color filters</h3>
                                <ul class="color-filter">
                                    <li><a href="#">Black</a></li>
                                    <li><a href="#">Brown</a></li>
                                    <li><a href="#">Orange</a></li>
                                    <li><a href="#">red</a></li>
                                    <li><a href="#">Yellow</a></li>
                                </ul>
                            </div>
                            -->
                            <!-- Product Filter -->
                            <div class="product-filter col-lg-3 col-sm-6 col-12">
                                <h3 class="filter-title">product tags</h3>
                                <ul class="product-tags">
                                    <li><a href="#">New</a></li>
                                    <li><a href="#">brand</a></li>
                                    <li><a href="#">black</a></li>
                                    <li><a href="#">white</a></li>
                                    <li><a href="#">chire</a></li>
                                    <li><a href="#">table</a></li>
                                    <li><a href="#">Lorem</a></li>
                                    <li><a href="#">ipsum</a></li>
                                    <li><a href="#">dolor</a></li>
                                    <li><a href="#">sit</a></li>
                                    <li><a href="#">amet</a></li>
                                </ul>
                            </div>
                            <div class="product-filter col-lg-3 col-sm-6 col-12">
                                <h3 class="filter-title">Filter by Price</h3>
                                <div class="filter-price">
                                    <form action="#">
                                        <div id="slider-range"></div>
                                        <div class="row">
                                            <div class="col-7">
                                                <p>Price :
                                                    <input type="text" id="amount">
                                                </p>
                                            </div>
                                            <div class="col-5 text-right">
                                                <button>filter</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
            </form>
            <div class="tab-content">
                <div class="tab-pane active" id="all">
                    <table class="table">
                      <thead>
                        <tr>
                            <th scope="col">Transaction ID</th>
                            <th scope="col">Buyer</th>
                            <th scope="col">Product</th>
                            <th scope="col">Product Volume</th>
                            <th scope="col">Money</th>
                            <th scope="col">Action(s)</th>
                        </tr>
                      </thead>
                      <tbody>
                    <?php
                        if (isset($_GET['page_no']) && $_GET['page_no']!="") {
                            $page_no = $_GET['page_no'];
                            } else {
                                $page_no = 1;
                                }

                            $total_records_per_page = 25;
                            $offset = ($page_no-1) * $total_records_per_page;
                            $previous_page = $page_no - 1;
                            $next_page = $page_no + 1;
                            $adjacents = "2"; 
                            
                            if (isset($_GET['search'])){
                                $result_count = mysqli_query($con,"SELECT COUNT(*) As total_records FROM `trades` WHERE MATCH(`product_name`) AGAINST('" . $_GET['search'] . "' IN NATURAL LANGUAGE MODE) AND pending = '0' AND product_owner = '". $_SESSION['active']."' ORDER BY product_date DESC");
                            }
                            else {
                                $result_count = mysqli_query($con,"SELECT COUNT(*) As total_records FROM `trades` WHERE pending = '1' AND seller_id = '". $_SESSION['account_id']."'");
                            }
                            

                            $total_records = mysqli_fetch_array($result_count);
                            $total_records = $total_records['total_records'];
                            $total_no_of_pages = ceil($total_records / $total_records_per_page);
                            echo("<script>console.log('PHP: " . $total_records . "');</script>");
                            $second_last = $total_no_of_pages - 1; // total page minus 1

                            $sql = "SELECT * FROM `trades` WHERE pending = '1' AND seller_id = '". $_SESSION['account_id']."'";
                            if (isset($_GET['search'])){
                                $sql .= " AND MATCH(`product_name`) AGAINST('" . $_GET['search'] . "' IN NATURAL LANGUAGE MODE) ORDER BY product_date DESC";
                            }

                            if (isset($_GET['sortbyfilter'])) {
                                if ($_GET['sortbyfilter'] == "new") {
                                    $sql .= " ORDER BY pickup_time DESC";
                                }
                                elseif ($_GET['sortbyfilter'] == "pricehigh") {
                                    $sql .= " ORDER BY money DESC";
                                }
                                elseif ($_GET['sortbyfilter'] == "pricelow") {
                                    $sql .= " ORDER BY money ASC";
                                }
                                elseif ($_GET['sortbyfilter'] == "volumehigh") {
                                    $sql .= " ORDER BY product_volume DESC";
                                }
                                elseif ($_GET['sortbyfilter'] == "volumelow") {
                                    $sql .= " ORDER BY product_volume ASC";
                                }
                            }
                            $sql .= " LIMIT $offset, $total_records_per_page";
                            $result_1 = mysqli_query($con,$sql);
                        while($row = mysqli_fetch_array($result_1)){
                            echo "<tr>";
                            echo "<th scope='row'>" . $row['transaction_id'] . "</th>";
                            echo "<td>";
                            $buyer_query = mysqli_query($con,"SELECT * FROM accounts WHERE account_id = '". $row['buyer_id'] ."'"); 
                            $buyer_name = mysqli_fetch_assoc($buyer_query);
                            echo "shannaurelle";
                            echo "</td>";
                            $buyer_query = mysqli_query($con,"SELECT * FROM products WHERE product_id = '". $row['product_id'] ."'"); 
                            $product = mysqli_fetch_assoc($buyer_query);
                            echo "<td>" . $product['product_name'] . "</td>";
                            echo "<td>" . $row['product_volume'] . "</td>";
                            echo "<td>" . $row['money'] . "</td>";
                            echo "<td>";
                            if($row['pickup_pending'] == 1){
                                echo "<button class='btn btn-white iteminfo' data-id='".$row['transaction_id']."'>Set time</button>";
                            }
                            else{
                                echo "<button class='btn btn-white deliveryinfo' data-id='".$row['transaction_id']."'>Confirm Pickup</button>";
                            }
                            echo "</td>";
                            echo "</tr>";
                        }
                            mysqli_close($con);
                    ?>
                    </tbody>
                    </table>
                    <ul>
                        <nav aria-label="Page navigation example">
                            <div class='text-center' style='padding: 10px 20px 0px; border-top: dotted 1px #CCC;'>
                                <strong>Page <?php echo $page_no." of ".$total_no_of_pages; ?></strong>
                            </div>
                            <ul class="pagination justify-content-center">
                                <?php 
                                    if($page_no > 1){
                                        echo "<li class='page-item'><a class='page-link' href='?";
                                        if (isset($_GET['search'])) {
                                            echo "search=" . $_GET['search'] . "&";
                                        }
                                        if (isset($_GET['sortbyfilter'])) {
                                            echo "sortbyfilter=" . $_GET['sortbyfilter'] . "&";
                                        }
                                        echo "page_no=1'>&lsaquo;&lsaquo; First </a></li>";
                                    }
                                ?>
                                
                                <li <?php if($page_no <= 1){ echo "class='disabled page-item'"; } ?>>
                                    <a class="page-link"
                                    <?php
                                        if($page_no > 1){
                                            echo "href='?";
                                            if (isset($_GET['search'])) {
                                            echo "search=" . $_GET['search'] . "&";
                                        }
                                            if (isset($_GET['sortbyfilter'])) {
                                                echo "sortbyfilter=" . $_GET['sortbyfilter'] . "&";
                                            }
                                            echo "page_no=$previous_page'";
                                        }
                                    ?>
                                    >Previous</a>
                                </li>
                                   
                                <?php 
                                if ($total_no_of_pages <= 10){       
                                    for ($counter = 1; $counter <= $total_no_of_pages; $counter++){
                                        if ($counter == $page_no) {
                                       echo "<li class='page-item active'><a class='page-link'>$counter</a></li>";  
                                            }else{
                                       echo "<li class='page-item'><a class='page-link' href='?";
                                       if (isset($_GET['search'])) {
                                            echo "search=" . $_GET['search'] . "&";
                                        }
                                       if (isset($_GET['sortbyfilter'])) {
                                            echo "sortbyfilter=" . $_GET['sortbyfilter'] . "&";
                                       }
                                       echo "page_no=$counter'>$counter</a></li>";
                                            }
                                    }
                                }
                                elseif($total_no_of_pages > 10){
                                    
                                if($page_no <= 4) {         
                                 for ($counter = 1; $counter < 8; $counter++){       
                                        if ($counter == $page_no) {
                                       echo "<li class='page-item active'><a class='page-link'>$counter</a></li>";  
                                            }else{
                                       echo "<li class='page-item'><a class='page-link' href='?";
                                       if (isset($_GET['search'])) {
                                            echo "search=" . $_GET['search'] . "&";
                                        }
                                       if (isset($_GET['sortbyfilter'])) {
                                            echo "sortbyfilter=" . $_GET['sortbyfilter'] . "&";
                                       }
                                       echo "page_no=$counter'>$counter</a></li>";
                                            }
                                    }
                                    echo "<li class='page-item'><a class='page-link>...</a></li>";
                                    echo "<li class='page-item'><a class='page-link' href='?";
                                    if (isset($_GET['search'])) {
                                            echo "search=" . $_GET['search'] . "&";
                                        }
                                    if (isset($_GET['sortbyfilter'])) {
                                            echo "sortbyfilter=" . $_GET['sortbyfilter'] . "&";
                                    }
                                    echo "page_no=$second_last'>$second_last</a></li>";
                                    echo "<li class='page-item'><a class='page-link' href='?";
                                    if (isset($_GET['search'])) {
                                            echo "search=" . $_GET['search'] . "&";
                                        }
                                    if (isset($_GET['sortbyfilter'])) {
                                            echo "sortbyfilter=" . $_GET['sortbyfilter'] . "&";
                                    }
                                    echo "page_no=$total_no_of_pages'>$total_no_of_pages</a></li>";
                                    }

                                 elseif($page_no > 4 && $page_no < $total_no_of_pages - 4) {         
                                    echo "<li class='page-item'><a class='page-link' href='?";
                                    if (isset($_GET['search'])) {
                                            echo "search=" . $_GET['search'] . "&";
                                        }
                                    if (isset($_GET['sortbyfilter'])) {
                                            echo "sortbyfilter=" . $_GET['sortbyfilter'] . "&";
                                    }
                                    echo "page_no=1'>1</a></li>";
                                    echo "<li class='page-item'><a class='page-link' href='?";
                                    if (isset($_GET['search'])) {
                                            echo "search=" . $_GET['search'] . "&";
                                        }
                                    if (isset($_GET['sortbyfilter'])) {
                                            echo "sortbyfilter=" . $_GET['sortbyfilter'] . "&";
                                    }
                                    echo "page_no=2'>2</a></li>";
                                    echo "<li class='page-item'><a class='page-link' >...</a></li>";
                                    for ($counter = $page_no - $adjacents; $counter <= $page_no + $adjacents; $counter++) {         
                                       if ($counter == $page_no) {
                                       echo "<li class='page-item active'><a>$counter</a></li>";    
                                            }else{
                                       echo "<li class='page-item'><a class='page-link' href='?";
                                        if (isset($_GET['search'])) {
                                            echo "search=" . $_GET['search'] . "&";
                                        }
                                        if (isset($_GET['sortbyfilter'])) {
                                            echo "sortbyfilter=" . $_GET['sortbyfilter'] . "&";
                                        }
                                       echo "page_no=$counter'>$counter</a></li>";
                                            }                  
                                   }
                                   echo "<li class='page-item'><a class='page-link'>...</a></li>";
                                   echo "<li class='page-item'><a  class='page-link' href='?";
                                   if (isset($_GET['search'])) {
                                            echo "search=" . $_GET['search'] . "&";
                                        }
                                   if (isset($_GET['sortbyfilter'])) {
                                            echo "sortbyfilter=" . $_GET['sortbyfilter'] . "&";
                                        }
                                   echo "page_no=$second_last'>$second_last</a></li>";
                                   echo "<li class='page-item'><a  class='page-link' href='?";
                                   if (isset($_GET['search'])) {
                                            echo "search=" . $_GET['search'] . "&";
                                        }
                                   if (isset($_GET['sortbyfilter'])) {
                                            echo "sortbyfilter=" . $_GET['sortbyfilter'] . "&";
                                        }
                                   echo "page_no=$total_no_of_pages'>$total_no_of_pages</a></li>";      
                                        }
                                    
                                    else {
                                    echo "<li class='page-item'><a class='page-link' href='?";
                                    if (isset($_GET['search'])) {
                                            echo "search=" . $_GET['search'] . "&";
                                        }
                                    if (isset($_GET['sortbyfilter'])) {
                                            echo "sortbyfilter=" . $_GET['sortbyfilter'] . "&";
                                        }
                                    echo "page_no=1'>1</a></li>";
                                    echo "<li class='page-item'><a class='page-link' href='?";
                                    if (isset($_GET['search'])) {
                                            echo "search=" . $_GET['search'] . "&";
                                        }
                                    if (isset($_GET['sortbyfilter'])) {
                                            echo "sortbyfilter=" . $_GET['sortbyfilter'] . "&";
                                        }
                                    echo "page_no=2'>2</a></li>";
                                    echo "<li class='page-item'><a class='page-link'>...</a></li>";

                                    for ($counter = $total_no_of_pages - 6; $counter <= $total_no_of_pages; $counter++) {
                                      if ($counter == $page_no) {
                                       echo "<li class='page-item active'><a class='page-link'>$counter</a></li>";  
                                            }else{
                                       echo "<li class='page-item'><a class='page-link' href='?";
                                       if (isset($_GET['search'])) {
                                            echo "search=" . $_GET['search'] . "&";
                                        }
                                       if (isset($_GET['sortbyfilter'])) {
                                            echo "sortbyfilter=" . $_GET['sortbyfilter'] . "&";
                                        }
                                       echo "page_no=$counter'>$counter</a></li>";
                                            }                   
                                            }
                                        }
                                }
                                ?>
                                
                                <li class="page-item" <?php if($page_no >= $total_no_of_pages){ echo "class='disabled'"; } ?>>
                                <a class="page-link"
                                <?php if($page_no < $total_no_of_pages) {
                                    echo "href='?";
                                    if (isset($_GET['search'])) {
                                            echo "search=" . $_GET['search'] . "&";
                                        }
                                    if (isset($_GET['sortbyfilter'])) {
                                        echo "sortbyfilter=" . $_GET['sortbyfilter'] . "&";
                                    }
                                    echo "page_no=$next_page'"; }
                                ?>
                                >Next</a>
                                </li>
                                <?php if($page_no < $total_no_of_pages){
                                    echo "<li class='page-item'><a class='page-link' href='?";
                                    if (isset($_GET['search'])) {
                                            echo "search=" . $_GET['search'] . "&";
                                        }
                                    if (isset($_GET['sortbyfilter'])) {
                                        echo "sortbyfilter=" . $_GET['sortbyfilter'] . "&";
                                    }
                                    echo "page_no=$total_no_of_pages'>Last &rsaquo;&rsaquo;</a></li>";
                                    } ?>
                            </ul>
                        </nav>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!-- product-area end -->
    <?php include('footer.php'); ?>
    <!-- Modal area start -->
    <div class="modal fade" id="itemModal" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <div class="modal-body d-flex">
                    <div class="modal-wrapper"></div>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal area end -->
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
    
    <script type='text/javascript'>

  $(document).ready(function(){

  $('.iteminfo').click(function(){
  
  var item_id = $(this).data('id');

  // AJAX request
  $.ajax({
   url: 'set_pending_time.php',
   type: 'post',
   data: {transaction_id: item_id},
   success: function(response){ 
     // Add response in Modal body
     $('.modal-wrapper').html(response);

     // Display Modal
     $('#itemModal').modal('show'); 
   }
    });
    });

    $('.deliveryinfo').click(function(){
  
  var item_id = $(this).data('id');

  // AJAX request
  $.ajax({
   url: 'confirm_delivery.php',
   type: 'post',
   data: {transaction_id: item_id},
   success: function(response){ 
     
   }
    });
    });
    });

    

    </script>

</body>

</html>