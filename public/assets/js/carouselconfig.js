$(document).ready(function () {
    $('#skinsShow').owlCarousel({
        loop:true,
        margin:10,
        nav:true,
        autoplaySpeed: 1000,
        autoplay:true,
        autoplayTimeout:2000,
        autoHeight: false,
        responsive:{
            0:{
                items:1
            },
            600:{
                items:3
            },
            1000:{
                items:4
            }
        }
    })



    $('#skins').owlCarousel({
        loop:false,
        margin:1,
        nav:true,
        navText:["<i class=\"fa fa-2x fa-chevron-circle-left\" aria-hidden=\"true\"></i>","<i class=\"fa fa-2x fa-chevron-circle-right\" aria-hidden=\"true\"></i>"],
        center:false,
        autoplay: false,
        autoHeight: false,
        autoWidth: false,
        responsive:{
            0:{
                items:1
            },
            600:{
                items:3
            },
            1000:{
                items:4
            },
            1200:{
                items:5
            }
        }

    })

});