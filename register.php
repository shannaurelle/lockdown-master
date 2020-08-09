<!doctype html>
<html class="no-js" lang="">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Lockdown - Login</title>
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

    <style type="text/css">
        /* Style the form */
        #regForm {
          background-color: #ffffff;
          margin: 100px auto;
          padding: 40px;
          width: 70%;
          min-width: 300px;
        }

        /* Style the input fields */
        input {
          padding: 10px;
          width: 100%;
          font-size: 17px;
          font-family: Raleway;
          border: 1px solid #aaaaaa;
        }

        /* Mark input boxes that gets an error on validation: */
        input.invalid {
          background-color: #ffdddd;
        }

        /* Hide all steps by default: */
        .tab {
          display: none;
        }

        /* Make circles that indicate the steps of the form: */
        .step {
          height: 15px;
          width: 15px;
          margin: 0 2px;
          background-color: #bbbbbb;
          border: none;
          border-radius: 50%;
          display: inline-block;
          opacity: 0.5;
        }

        /* Mark the active step: */
        .step.active {
          opacity: 1;
        }

        /* Mark the steps that are finished and valid: */
        .step.finish {
          background-color: #4CAF50;
        }
    </style>
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
    <header class="header-area mx-0" id="sticky-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-1 col-6">
                    <div class="logo">
                        <a href="index.html">
                            <img src="assets/images/logo_lockdown_2.png" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-lg-7 offset-lg-4 col-md-12 d-none d-lg-block ">
                        <form class="mainmenu container d-inline mt-3" method="post" action="auth.php">
                            <div class="row justify-content-end">
                                <div class="col-4 p-0">
                                    <label class="text-white" for="Username">Username</label>
                                </div>
                                <div class="text-white col-4 p-0">
                                    <label class="text-white" for="Password">Password</label>
                                </div>
                            </div>
                            <div class="row justify-content-end">
                                <div class="login-text col-4 p-0"><input type="text" ></div>
                                <div class="login-text col-4 p-0"><input type="text" ></div>
                                <div class="col-2">
                                    <button class="btn btn-success login-text py-1 px-2" type="submit">Login</button>
                                </div> 
                            </div>
                            <div class="row">
                                <div class="col-lg-6 offset-lg-6 text-dark">
                                    <a class="text-center text-hint" href="#">Forgot your password?</a>
                                </div>
                            </div>
                        </form>  
                </div>
            </div>
        </div>
            
        </div> 
    </header>
    <!-- header-area end -->

    <!-- .breadcumb-area start -->
    <div class="w-50"></div>
    <!-- .breadcumb-area end -->

    <!-- checkout-area start -->
    <form id="regForm" action="">

        <h1>Register:</h1>

        <!-- One "tab" for each step in the form: -->
        <div class="tab">Name:
          <p><input placeholder="First name..." oninput="this.className = ''"></p>
          <p><input placeholder="Last name..." oninput="this.className = ''"></p>
        </div>

        <div class="tab">Contact Info:
          <p><input placeholder="E-mail..." oninput="this.className = ''"></p>
          <p><input placeholder="Phone..." oninput="this.className = ''"></p>
        </div>

        <div class="tab">Birthday:
          <p><input placeholder="dd" oninput="this.className = ''"></p>
          <p><input placeholder="mm" oninput="this.className = ''"></p>
          <p><input placeholder="yyyy" oninput="this.className = ''"></p>
        </div>

        <div class="tab">Login Info:
          <p><input placeholder="Username..." oninput="this.className = ''"></p>
          <p><input placeholder="Password..." oninput="this.className = ''"></p>
        </div>

        <div style="overflow:auto;">
          <div style="float:right;">
            <button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
            <button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
          </div>
        </div>

        <!-- Circles which indicates the steps of the form: -->
        <div style="text-align:center;margin-top:40px;">
          <span class="step"></span>
          <span class="step"></span>
          <span class="step"></span>
          <span class="step"></span>
        </div>

    </form>
    <!-- checkout-area end -->







    <script type="text/javascript">
        var currentTab = 0; // Current tab is set to be the first tab (0)
        showTab(currentTab); // Display the current tab

        function showTab(n) {
          // This function will display the specified tab of the form ...
          var x = document.getElementsByClassName("tab");
          x[n].style.display = "block";
          // ... and fix the Previous/Next buttons:
          if (n == 0) {
            document.getElementById("prevBtn").style.display = "none";
          } else {
            document.getElementById("prevBtn").style.display = "inline";
          }
          if (n == (x.length - 1)) {
            document.getElementById("nextBtn").innerHTML = "Submit";
          } else {
            document.getElementById("nextBtn").innerHTML = "Next";
          }
          // ... and run a function that displays the correct step indicator:
          fixStepIndicator(n)
        }

        function nextPrev(n) {
          // This function will figure out which tab to display
          var x = document.getElementsByClassName("tab");
          // Exit the function if any field in the current tab is invalid:
          if (n == 1 && !validateForm()) return false;
          // Hide the current tab:
          x[currentTab].style.display = "none";
          // Increase or decrease the current tab by 1:
          currentTab = currentTab + n;
          // if you have reached the end of the form... :
          if (currentTab >= x.length) {
            //...the form gets submitted:
            document.getElementById("regForm").submit();
            return false;
          }
          // Otherwise, display the correct tab:
          showTab(currentTab);
        }

        function validateForm() {
          // This function deals with validation of the form fields
          var x, y, i, valid = true;
          x = document.getElementsByClassName("tab");
          y = x[currentTab].getElementsByTagName("input");
          // A loop that checks every input field in the current tab:
          for (i = 0; i < y.length; i++) {
            // If a field is empty...
            if (y[i].value == "") {
              // add an "invalid" class to the field:
              y[i].className += " invalid";
              // and set the current valid status to false:
              valid = false;
            }
          }
          // If the valid status is true, mark the step as finished and valid:
          if (valid) {
            document.getElementsByClassName("step")[currentTab].className += " finish";
          }
          return valid; // return the valid status
        }

        function fixStepIndicator(n) {
          // This function removes the "active" class of all steps...
          var i, x = document.getElementsByClassName("step");
          for (i = 0; i < x.length; i++) {
            x[i].className = x[i].className.replace(" active", "");
          }
          //... and adds the "active" class to the current step:
          x[n].className += " active";
        }
    </script>
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