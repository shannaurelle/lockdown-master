<!-- header-area start -->
<header class="header-area" id="sticky-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-6">
                    <div class="logo">
                        <a href="index.html">
                            <img src="assets/images/TOM_120x60.png" alt="The Online Marketplace">
                        </a>
                    </div>
                </div>
                <div class="col-lg-2 lg-offset-7 col-sm-5 col-4 ml-auto">
                    <div class="search-wrapper">
                        <ul class="d-flex">
                            <li><a href="javascript:void(0);"><i class="fa fa-shopping-bag"></i></a>
                                <ul class="cart-wrap">
                                    <?php 
                                        $cart_id = $_SESSION['account_id'];
                                        $sql = "SELECT * FROM cart AS c LEFT JOIN products AS p ON c.product_id = p.product_id UNION SELECT * FROM cart AS c RIGHT JOIN products AS p ON c.product_id = p.product_id WHERE c.cart_id = $cart_id";
                                        $query = mysqli_query($con,$sql);
                                        $subtotal = 0;
                                        while($data = mysqli_fetch_assoc($query)):
                                    ?>
                                        <li class="cart-items">
                                            <div class="cart-img">
                                                <img src="assets/images/dummy_images/1.png" alt="" width="25" height="25">
                                            </div>
                                        <div class="cart-content">
                                            <a href="cart.html"><?php echo $data['product_name']; ?></a>
                                            <span>QTY : <?php echo $data['product_volume']; ?></span>
                                            <p class="text-white">Php <?php echo $data['product_price']; ?></p>
                                            <i class="fa fa-times"></i>
                                        </div>
                                        </li>
                                    <?php
                                        $subtotal += $data['product_volume']*$data['product_price']; 
                                        endwhile; 
                                    ?>
                                    <li>Subtotal: <span class="pull-right">Php <?php echo $subtotal?></span></li>
                                    <li>
                                        <a href="cart.php"><button>Go to Checkout</button><a href="cart.php">
                                    </li>
                                </ul>
                            </li>
                            <li><a href="javascript:void(0);"><i class="fa fa-user"></i></a>
                                <ul class="account-wrap">
                                    <li><a href="account.html">Account</a></li>
                                    <li><a href="logout.php">Logout</a></li>
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
    