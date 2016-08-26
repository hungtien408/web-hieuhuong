(function ($) {
    $(window).load(function () {
    });
    $(function () {
        myfunload();
        mymap();
    });
})(jQuery);
//function===============================================================================================
/*=============================fun=========================================*/
function myfunload() {
    $(".panel-a").mobilepanel();
    $("#menu > li").not(".home").clone().appendTo($("#menuMobiles"));
    $("#menuMobiles input").remove();
    $("#menuMobiles > li > a").append('<span class="fa fa-chevron-circle-right iconar"></span>');
    $("#menuMobiles li li a").append('<span class="fa fa-angle-right iconl"></span>');
    $("#menu > li:last-child").addClass("last");
    $("#menu > li:first-child").addClass("fisrt");

    $("#menu > li").find("ul").addClass("menu-level");

    

    $('#menu li').hover(function () {
        $(this).children('ul').stop(true, false, true).slideToggle(300);
    });
    /*===== set data-img = background =====*/

    /*======= slick =======*/
    $(document).ready(function () {
        var owl = $('.more-item.owl-carousel');
        owl.owlCarousel({
            margin: 5,
            loop: false,
            nav: true,
            autoplay: true,
            autoplayTimeout: 5000,
            autoplayHoverPause: true,
            responsive: {
                0: {
                    items: 1
                },
                550: {
                    items: 2
                },
                768: {
                    items: 3
                },
                1000: {
                    items: 4
                }
            }
        })
    });

    $(document).ready(function () {
        var owl = $('.thumb-detail-images.owl-carousel');
        owl.owlCarousel({
            margin: 5,
            loop: false,
            nav: true,
            responsive: {
                0: {
                    items: 2
                },
                550: {
                    items: 3
                },
                1000: {
                    items: 4
                }
            }
        })
    });

    /*========== set height items product ==========*/
    //$(window).on('ready', function () {
    //    var maxheight = 0;
    //    $(".product-items .items").each(function () {
    //        if ($(this).height() > maxHeight) { maxHeight = $(this).height(); }
    //    });
    //    $(".product-items .items").height(maxHeight);
    //});
    //$(document).ready(function () {
    //    $(window).resize(function () {
    //        var maxheight = 0;
    //        $(".product-items .items").each(function () {
    //            if ($(this).height() > maxHeight) { maxHeight = $(this).height(); }
    //        });
    //        $(".product-items .items").height(maxHeight);
    //    }).resize();
    //});

    //function DoEqualSizer(myclass) {
    //    var heights = $(myclass).map(function () {
    //        $(this).height('auto');
    //        return $(this).height();
    //    }).get(),
	//    maxHeight = Math.max.apply(null, heights);
    //    $(myclass).height(maxHeight + 5);
    //};

    //function EqualSizer(myclass) {
    //    $(document).ready(DoEqualSizer(myclass));
    //    window.addEventListener('resize', function () {
    //        DoEqualSizer(myclass);
    //    });
    //};
    //EqualSizer('.product-items .items');

    /* enable bootstrap's tooltip  */
    $(document).ready(function () {
        $('[data-toggle="tooltip"]').tooltip();
    });

    /*** search ***/

    /** active carousel bootstrap **/
    $('.carousel-inner').find('.item').first().addClass('active');
    /** activw tab bootstrap **/
    //$('.nav-tabs').find('li').first().addClass('active');
    //$('.tab-content').find('.tab-pane').first().addClass('active');
    /*** each elements to get max height ***/
}
/*=========================================================================*/
//================== scroll top
$(window).scroll(function () {
    if ($(this).scrollTop() > 100) {
        $('.scroll-to-top').fadeIn();
    } else {
        $('.scroll-to-top').fadeOut();
    }
});

$('.scroll-to-top').on('click', function (e) {
    e.preventDefault();
    $('html, body').animate({ scrollTop: 0 }, 800);
    return false;
});
//==================
function mymap() {
    mympp();
    var timeout;
    $(window).resize(function () {
        clearTimeout(timeout);
        setTimeout(function () {
            mympp();
        }, 500);
    });
}
function mympp() {
    $('#mapwrap').remove();
    if ($(window).width() > 768) {
        $('#mapshow').append('<div id="mapwrap"><iframe id="iframe" src="map.aspx" frameborder="0" height="100%" width="100%"></iframe></div>');
    }
}

/* cloud zoom */
$(document).ready(function () {
    $(window).resize(function () {
        var winwidth = $(window).width();
        if (winwidth > 1199) {
            $('.main-detail-image > a').addClass('cloud-zoom');
            $('.cloud-zoom, .cloud-zoom-gallery').CloudZoom();
        }
        else if (winwidth <= 1199) {
            $('.main-detail-image > a').removeClass('cloud-zoom');
            $('.main-detail-image > a').removeAttr('href');
            $('.thumb-detail-images .item > a').removeAttr('href');
        }
    }).resize();
});
$(document).ready(function () {
    var main_img = $('.thumb-detail-images .item:first-child img').attr('src');
    $('.main-detail-image a').attr('href', main_img);
    $('.main-detail-image img').attr('src', main_img);
});

$('.thumb-detail-images .item img').click(function () {
    var loc = $(this).attr("src");
    $('.main-detail-image a').attr("href", loc);
    $('.main-detail-image img').attr("src", loc);
});

/* actice collapse */
$(document).ready(function () {
    $('.panel-collapse').on('show.bs.collapse', function () {
        $(this).siblings('.panel-heading').addClass('active');
    });

    $('.panel-collapse').on('hide.bs.collapse', function () {
        $(this).siblings('.panel-heading').removeClass('active');
    });
});