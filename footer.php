<!-- product-area end -->
<footer class="footer-area">
        
        <div class="footer-buttom">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-12">
                        <p class="text-dark" >&copy;2020 The Online Marketplace All Right Reserved</p>
                    </div>
                    <div class="col-md-6 col-12">
                        <ul class="d-flex">
                            <li><a class="text-dark" href="index.html">Home</a></li>
                            <?php if(isset($_SESSION['access'])): ?>
                            <li><a class="text-dark" href="logout.php">Logout</a>
                            <?php endif; ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>