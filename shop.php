<?php

$con=mysqli_connect("localhost", "root", "");
    if (mysqli_connect_errno()){
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }
    else{
        session_start();
        mysqli_select_db($con, 'lockdown-storage');
    }

?>

<!doctype html>
<html class="no-js" lang="">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Sajuguju - Shop</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="assets/images/favicon.png">
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
    <!-- header-area start -->
    <header class="header-area" id="sticky-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-6">
                    <div class="logo">
                        <a href="index.html">
                            <img src="assets/images/logo.png" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-lg-7 d-none d-lg-block">
                    <div class="mainmenu">
                        <ul id="navigation" class="d-flex">
                            <li><a href="javascript:void(0);">Home <i class="fa fa-angle-down"></i></a>
                                <ul class="submenu">
                                    <li><a href="index.html">Main Home</a></li>
                                    <li><a href="index2.html">Home 2</a></li>
                                    <li><a href="index3.html">Home 3</a></li>
                                    <li><a href="index4.html">Home 4</a></li>
                                </ul>
                            </li>
                            <li class="active"><a href="javascript:void(0);">Shop <i class="fa fa-angle-down"></i></a>
                                <ul class="megamenu row">
                                    <li class="col-xl-3 col-lg-2 col-12">
                                        <strong>Shop Pages</strong>
                                        <ul>
                                            <li><a href="shop.html">Standard Shop</a></li>
                                            <li><a href="shop.html">Small Products</a></li>
                                            <li><a href="shop.html">Large Products</a></li>
                                            <li><a href="shop.html">Shop Infinity</a></li>
                                        </ul>
                                    </li>
                                    <li class="col-lg-3 col-12 col-x-3">
                                        <strong>Products Pages</strong>
                                        <ul>
                                            <li><a href="single-product.html">Product Page V1</a></li>
                                            <li><a href="single-product.html">Product Page V2</a></li>
                                            <li><a href="single-product.html">Product Page V3</a></li>
                                            <li><a href="single-product.html">Simple Product</a></li>
                                        </ul>
                                    </li>
                                    <li class="col-lg-3 col-xl-2 col-12">
                                        <strong>Other Shop Pages</strong>
                                        <ul>
                                            <li><a href="cart.html">Shopping Cart</a></li>
                                            <li><a href="wishlist.html">Wishlist</a></li>
                                            <li><a href="account.html">My Account</a></li>
                                            <li><a href="checkout.html">Checkout</a></li>
                                        </ul>
                                    </li>
                                    <li class="col-lg-4 text-right d-none d-lg-block">
                                        <img src="assets/images/mega.png" alt="">
                                    </li>
                                </ul>
                            </li>
                            <li><a href="about.html">About</a></li>
                            <li><a href="javascript:void(0);">Blog <i class="fa fa-angle-down"></i></a>
                                <ul class="submenu">
                                    <li><a href="blog.html">Blog</a></li>
                                    <li><a href="blog-details.html">Blog Details</a>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="contact.html">Contact</a></li>
                            <li><a href="javascript:void(0);">Pages <i class="fa fa-angle-down"></i></a>
                                <ul class="submenu">
                                    <li><a href="shop.html">Shop</a></li>
                                    <li><a href="shop-sidebar.html">Shop sidebar</a></li>
                                    <li><a href="single-product.html">Shop Single</a></li>
                                    <li><a href="cart.html">Shopping Cart</a></li>
                                    <li><a href="wishlist.html">Wishlist</a></li>
                                    <li><a href="checkout.html">checkout</a></li>
                                    <li><a href="account.html">Account</a></li>
                                    <li><a href="login.html">Login</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-sm-5 col-4">
                    <div class="search-wrapper">
                        <ul class="d-flex">
                            <li><a href="javascript:void(0);"><i class="fa fa-search"></i></a>
                                <ul class="search">
                                    <li>
                                        <form action="#">
                                            <input type="text" placeholder="Search...">
                                            <button><i class="fa fa-search"></i></button>
                                        </form>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="javascript:void(0);"><i class="fa fa-shopping-bag"></i></a>
                                <ul class="cart-wrap">
                                    <li class="cart-items">
                                        <div class="cart-img">
                                            <img src="assets/images/cart/1.jpg" alt="">
                                        </div>
                                        <div class="cart-content">
                                            <a href="cart.html">Beautiful Chair</a>
                                            <span>QTY : 1</span>
                                            <p>$35.00</p>
                                            <i class="fa fa-times"></i>
                                        </div>
                                    </li>
                                    <li class="cart-items mb-0">
                                        <div class="cart-img">
                                            <img src="assets/images/cart/1.jpg" alt="">
                                        </div>
                                        <div class="cart-content">
                                            <a href="cart.html">Beautiful Chair</a>
                                            <span>QTY : 1</span>
                                            <p>$35.00</p>
                                            <i class="fa fa-times"></i>
                                        </div>
                                    </li>
                                    <li>Subtotol: <span class="pull-right">$70.00</span></li>
                                    <li>
                                        <button>Check Out</button>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="javascript:void(0);"><i class="fa fa-user"></i></a>
                                <ul class="account-wrap">
                                    <li><a href="account.html">Account</a></li>
                                    <li><a href="login.html">Login</a></li>
                                    <li><a href="wishlist.html">wishlist</a></li>
                                    <li><a href="checkout.html">Checkout</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="d-block d-lg-none col-sm-1 clear col-2">
                    <div class="responsive-menu-wrap floatright"></div>
                </div>
            </div>
        </div>
    </header>
    <!-- header-area end -->
    <!-- .breadcumb-area start -->
    <div class="breadcumb-area bg-img-1 black-opacity ptb-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcumb-wrap text-center">
                        <h2>Shop Page</h2>
                        <ul>
                            <li><a href="index.html">Home</a></li>
                            <li><span>Shop</span></li>
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
                <form class="mx-auto" action="<?php echo $_SERVER['PHP_SELF']; ?>">
                    <div class="input-group mb-3">
                      <input name="search" type="text" class="form-control" placeholder="Search..." aria-describedby="basic-addon2">
                      <div class="input-group-append">
                        <button class="loadmore-btn">Search</button>
                      </div>
                    </div>
                </form>
                
            </div>
            <div class="row">
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
                <div class="col-sm-3 col-lg-2">
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
                                          <input class="form-check-input" type="radio" name="sortbyfilter" value="popular">
                                          <label class="form-check-label">
                                            Popularity
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
                    <ul class="row">
                    <?php
                        if (isset($_GET['page_no']) && $_GET['page_no']!="") {
                            $page_no = $_GET['page_no'];
                            } else {
                                $page_no = 1;
                                }

                            $total_records_per_page = 4;
                            $offset = ($page_no-1) * $total_records_per_page;
                            $previous_page = $page_no - 1;
                            $next_page = $page_no + 1;
                            $adjacents = "2"; 

                            
                            if (isset($_GET['search'])){
                                $result_count = mysqli_query($con,"SELECT COUNT(*) As total_records FROM `products` WHERE MATCH(`product_name`) AGAINST('" . $_GET['search'] . "' IN NATURAL LANGUAGE MODE) ORDER BY product_date DESC");
                            }
                            else {
                                $result_count = mysqli_query($con,"SELECT COUNT(*) As total_records FROM `products`");
                            }
                            

                            $total_records = mysqli_fetch_array($result_count);
                            $total_records = $total_records['total_records'];
                            $total_no_of_pages = ceil($total_records / $total_records_per_page);
                            echo("<script>console.log('PHP: " . $total_records . "');</script>");
                            $second_last = $total_no_of_pages - 1; // total page minus 1

                            $sql = "SELECT * FROM `products`";
                            if (isset($_GET['search'])){
                                $sql .= "WHERE MATCH(`product_name`) AGAINST('" . $_GET['search'] . "' IN NATURAL LANGUAGE MODE) ORDER BY product_date DESC";
                            }

                            if (isset($_GET['sortbyfilter'])) {
                                if ($_GET['sortbyfilter'] == "new") {
                                    $sql .= " ORDER BY product_date DESC";
                                }
                                elseif ($_GET['sortbyfilter'] == "pricehigh") {
                                    $sql .= " ORDER BY product_price DESC";
                                }
                                elseif ($_GET['sortbyfilter'] == "pricelow") {
                                    $sql .= " ORDER BY product_price ASC";
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
                            echo "<li class='col-lg-3 col-sm-6 col-12'>";
                            echo "<div class='product-wrap'>";
                            echo "<div class='product-img'>";
                            echo "<img src='assets/images/product/1.jpg' alt=''>";
                            echo "<ul class='icon'>";
                            echo "<li><a href='cart.html'><i class='fa fa-shopping-cart'></i></a>";
                            echo "<span>Add to cart</span>";
                            echo "</li>";
                            echo "<li><a href='wishlist.html'><i class='fa fa-heart'></i></a>";
                            echo "<span>Add to Wishlist</span>";
                            echo "</li>";
                            echo "<li><a data-toggle='modal' data-target='#exampleModalCenter' href='javascript:void(0);'><i class='fa fa-eye'></i></a>";
                            echo "<span>Quick View</span>";
                            echo "</li>";
                            echo "</ul>";
                            echo "</div>";
                            echo "<div class='product-content fix'>";
                            echo "<h3><a href='single-product.html'>" . $row['product_name'] . "</a></h3>";
                            echo "<span class='pull-left'> $" . $row['product_price'] . "</span>";
                            echo "<ul class='pull-right'>";
                            echo "<li><i class='fa fa-star'></i></li>";
                            echo "<li><i class='fa fa-star'></i></li>";
                            echo "<li><i class='fa fa-star'></i></li>";
                            echo "<li><i class='fa fa-star'></i></li>";
                            echo "<li><i class='fa fa-star'></i></li>";
                            echo "</ul>";
                            echo "</div>";
                            echo "</div>";
                            echo "</li>";

                        }
                            mysqli_close($con);
                    ?>
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
    <footer class="footer-area">
        <div class="footer-top bg-1">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-sm-6 col-12">
                        <div class="footer-widget footer-logo">
                            <img src="assets/images/logo2.png" alt="">
                            <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from</p>
                            <ul class="socil-icon d-flex">
                                <li><a href="javascript:void(0);"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="javascript:void(0);"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="javascript:void(0);"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="javascript:void(0);"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="javascript:void(0);"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 col-12">
                        <div class="footer-widget footer-menu">
                            <h2>Spacial Menu</h2>
                            <ul>
                                <li><a href="account.html">My Account</a></li>
                                <li><a href="checkout.html">Checkout</a></li>
                                <li><a href="javascript:void(0)">Help</a></li>
                                <li><a href="javascript:void(0)">Support</a></li>
                                <li><a href="javascript:void(0)">FAQ</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 col-12">
                        <div class="footer-widget footer-contact">
                            <h2>Contact us</h2>
                            <ul>
                                <li><i class="fa fa-map-marker"></i>House No. 09 , Road No.25 Dhaka,Bangladesh </li>
                                <li><i class="fa fa-phone"></i>+1(888)234-56789 <span>+1(888)234-56789</span> </li>
                                <li><i class="fa fa-envelope-o"></i>youremail@gmail.com</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 col-12">
                        <div class="footer-widget footer-contact">
                            <h2>Join to Newsletter</h2>
                            <p>Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from</p>
                            <form class="sform">
                                <div class="form_msg">
                                    <label class="mt10"></label>
                                </div>
                                <input type="email" name="email" placeholder="Enter Your Email" required>
                                <button type="submit" name="submit" id="subscribe-btn"><i class="fa fa-long-arrow-right"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-buttom">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-12">
                        <p>&copy;2018 Your Website Name All Right Reserved</p>
                    </div>
                    <div class="col-md-6 col-12">
                        <ul class="d-flex">
                            <li><a href="index.html">Home</a></li>
                            <li><a href="blog.html">Blog</a></li>
                            <li><a href="contact.html">Contact Us</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Modal area start -->
    <div class="modal fade" id="exampleModalCenter" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <div class="modal-body d-flex">
                    <div class="product-single-img w-50">
                        <img src="assets/images/product/product-details.jpg" alt="">
                    </div>
                    <div class="product-single-content w-50">
                        <h3>Flower Vase</h3>
                        <div class="rating-wrap fix">
                            <span class="pull-left">$219.56</span>
                            <ul class="rating pull-right">
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li>(05 Customar Review)</li>
                            </ul>
                        </div>
                        <p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs</p>
                        <ul class="input-style">
                            <li class="quantity cart-plus-minus">
                                <input type="text" value="1" />
                            </li>
                            <li><a href="cart.html">Add to Cart</a></li>
                        </ul>
                        <ul class="cetagory">
                            <li>Categories:</li>
                            <li><a href="#">Chair,</a></li>
                            <li><a href="#">Sitting</a></li>
                        </ul>
                        <ul class="socil-icon">
                            <li>Share :</li>
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal area start -->
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