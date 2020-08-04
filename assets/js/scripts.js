(function($) {
    "use strict";

    // filter-click
    $('.filter-menu a').on('click', function() {
        $('.filter-active').slideToggle();
    })

    // toggle
    $('#toggle1').on('click', function() {
        $('.create-account').slideToggle();
    })

    // toggle
    $('#toggle2').on('click', function() {
        $('#open2').slideToggle();
    })


    // sidebarmenu click
    $(".sidebar-menu a").on("click", function() {
        $(".sidemenu-wrap, .overlay-bg,.sidebar-menu a span").addClass("current");
    });
    $(".overlay-bg, .sidemenu span").on("click", function() {
        $(".sidemenu-wrap, .overlay-bg,.sidebar-menu a span").removeClass("current");
    });

    // clickmenu
    $(".metismenu").metisMenu();

    // imageZoom effect
    $('.product-active .item').zoom();

    // swipper slider
    var interleaveOffset = 0.5;

    var swiperOptions = {
        loop: true,
        speed: 1000,
        grabCursor: true,
        watchSlidesProgress: true,
        mousewheelControl: true,
        autoplay: {
            delay: 2500,
            disableOnInteraction: false,
        },
        keyboardControl: true,
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev"
        },
        on: {
            progress: function() {
                var swiper = this;
                for (var i = 0; i < swiper.slides.length; i++) {
                    var slideProgress = swiper.slides[i].progress;
                    var innerOffset = swiper.width * interleaveOffset;
                    var innerTranslate = slideProgress * innerOffset;
                    swiper.slides[i].querySelector(".slide-inner").style.transform =
                        "translate3d(" + innerTranslate + "px, 0, 0)";
                }
            },
            touchStart: function() {
                var swiper = this;
                for (var i = 0; i < swiper.slides.length; i++) {
                    swiper.slides[i].style.transition = "";
                }
            },
            setTransition: function(speed) {
                var swiper = this;
                for (var i = 0; i < swiper.slides.length; i++) {
                    swiper.slides[i].style.transition = speed + "ms";
                    swiper.slides[i].querySelector(".slide-inner").style.transition =
                        speed + "ms";
                }
            }
        }
    };

    var swiper = new Swiper(".swiper-container", swiperOptions);


    // slider-active
    $('.instaram-active').owlCarousel({
        margin: 15,
        loop: true,
        autoplay: true,
        autoplayTimeout: 5000,
        nav: false,
        smartSpeed: 1000,
        navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
        responsive: {
            0: {
                items: 2
            },
            450: {
                items: 3
            },
            768: {
                items: 4
            },
            1000: {
                items: 5
            }
        }
    });

    // Single gallery slider
    function productGallary() {
        if ($('.product-active').length && $('.product-thumbnil-active').length) {

            var $sync1 = $(".product-active"),
                $sync2 = $(".product-thumbnil-active"),
                flag = false,
                duration = 500;

            $sync1
                .owlCarousel({
                    items: 1,
                    margin: 0,
                    nav: false,
                    dots: false
                })
                .on('changed.owl.carousel', function(e) {
                    if (!flag) {
                        flag = true;
                        $sync2.trigger('to.owl.carousel', [e.item.index, duration, true]);
                        flag = false;
                    }
                });

            $sync2
                .owlCarousel({
                    margin: 10,
                    items: 5,
                    nav: true,
                    dots: false,
                    navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
                    center: false,
                    responsive: {
                        0: {
                            items: 2,
                            autoWidth: false
                        },
                        400: {
                            items: 2,
                            autoWidth: false
                        },
                        500: {
                            items: 2,
                            center: false,
                            autoWidth: false
                        },
                        600: {
                            items: 3,
                            autoWidth: false
                        },
                        1200: {
                            items: 3,
                            autoWidth: false
                        }
                    },
                })
                .on('click', '.owl-item', function() {
                    $sync1.trigger('to.owl.carousel', [$(this).index(), duration, true]);

                })
                .on('changed.owl.carousel', function(e) {
                    if (!flag) {
                        flag = true;
                        $sync1.trigger('to.owl.carousel', [e.item.index, duration, true]);
                        flag = false;
                    }
                });

        };
    }

    productGallary();


    /*==========================================================================
        WHEN DOCUMENT LOADING
    ==========================================================================*/


    // // stickey menu
    $(window).on('scroll', function() {
        var scroll = $(window).scrollTop(),
            mainHeader = $('#sticky-header'),
            mainHeaderHeight = mainHeader.innerHeight();

        // console.log(mainHeader.innerHeight());
        if (scroll > 265) {
            $("#sticky-header").addClass("sticky-menu");
        } else {
            $("#sticky-header").removeClass("sticky-menu");
        }
    });

    /*--------------------------
     scrollUp
    ---------------------------- */
    $.scrollUp({
        scrollText: '<i class="fa fa-arrow-up"></i>',
        easingType: 'linear',
        scrollSpeed: 900,
        animation: 'fade'
    });



    // slicknav
    $('ul#navigation').slicknav({
        prependTo: ".responsive-menu-wrap"
    });


    // smttoh-scroll
    function scrollSpeed() {
        $.scrollSpeed(200, 800);
    };


    /*----------------------------
     price-slider active
    ------------------------------ */
    $("#slider-range").slider({
        range: true,
        min: 12,
        max: 200,
        values: [0, 100],
        slide: function(event, ui) {
            $("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
        }
    });


    $("#amount").val("$" + $("#slider-range").slider("values", 0) +
        " - $" + $("#slider-range").slider("values", 1));
    /*-- price range End --*/

    /*==================================
            LOAD MORE JQUERY
    ================================== */
    var list1 = $(".moreload");
    var numToShow1 = 4;
    var button1 = $(".loadmore-btn");
    var numInList1 = list1.length;

    list1.hide();
    if (numInList1 > numToShow1) {
        button1.show();
    }
    list1.slice(0, numToShow1).show();
    button1.on('click', function() {
        var showing1 = list1.filter(':visible').length;
        list1.slice(showing1 - 1, showing1 + numToShow1).fadeIn();
        var nowShowing1 = list1.filter(':visible').length;
        if (nowShowing1 >= numInList1) {
            button1.hide();
        }
    });



    /*-----------------------
       cart-plus-minus-button 
     -------------------------*/
    $(".cart-plus-minus").append('<div class="dec qtybutton">-</div><div class="inc qtybutton">+</div>');
    $(".qtybutton").on("click", function() {
        var $button = $(this);
        var oldValue = $button.parent().find("input").val();
        if ($button.text() == "+") {
            var newVal = parseFloat(oldValue) + 1;
        } else {
            // Don't allow decrementing below zero
            if (oldValue > 0) {
                var newVal = parseFloat(oldValue) - 1;
            } else {
                newVal = 0;
            }
        }
        $button.parent().find("input").val(newVal);
    });
    /*====================================================
                    load-function
    ====================================================*/

    $(window).on('load', function() {
        /*-- preloader ---*/
        $('.preloader-wrap').fadeOut();
        /*-- Two Col EqHeight---*/
        /*-- Scroll Speed---*/
        scrollSpeed();
        productGallary();

        $('#popup-subscribe').modal('show');
    });



    $(window).on("scroll", function() {
        /*-- preloader ---*/
        $('.preloader-wrap').fadeOut();
        productGallary();
    });

    /*-----------------------------
    14. Ajax MailChip
    ------------------------------- */
    $('#mc-form').ajaxChimp({
        url: 'http://www.wpocean.us13.list-manage.com/subscribe/post?u=e9d729be03847d1a66b143bd2&amp;id=21ac2a3302', //Set Your Mailchamp URL
        callback: function(resp) {
            if (resp.result === 'success') {
                $('.sform input, .sform .subscribe-btn').fadeOut();
            }
        }
    });

    /*---------------------
    // Ajax Contact Form
    --------------------- */

    $('.cf-msg').hide();
    $('form#cf button#submit').on('click', function() {
        var fname = $('#fname').val();
        var subject = $('#subject').val();
        var email = $('#email').val();
        var msg = $('#msg').val();
        var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;

        if (!regex.test(email)) {
            alert('Please enter valid email');
            return false;
        }

        fname = $.trim(fname);
        subject = $.trim(subject);
        email = $.trim(email);
        msg = $.trim(msg);

        if (fname != '' && email != '' && msg != '') {
            var values = "fname=" + fname + "&subject=" + subject + "&email=" + email + " &msg=" + msg;
            $.ajax({
                type: "POST",
                url: "mail.php",
                data: values,
                success: function() {
                    $('#fname').val('');
                    $('#subject').val('');
                    $('#email').val('');
                    $('#msg').val('');

                    $('.cf-msg').fadeIn().html('<div class="alert alert-success"><strong>Success!</strong> Email has been sent successfully.</div>');
                    setTimeout(function() {
                        $('.cf-msg').fadeOut('slow');
                    }, 4000);
                }
            });
        } else {
            $('.cf-msg').fadeIn().html('<div class="alert alert-danger"><strong>Warning!</strong> Please fillup the informations correctly.</div>')
        }
        return false;
    });

})(jQuery);