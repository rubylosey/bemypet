
$(function() {
    $('.nece-wrap > .owl-carousel').owlCarousel({
        loop:true,
        nav:true,
        responsiveClass:true,
        responsive: {
            0: { items:1 },
            650: { 
                items:2,
                margin:30                    
            },
            750: { 
                items:2,
                margin:30                    
            },
            1050: {
                items:3,
                margin:20
            },
            1450: {
                items:4,
                margin:20
            }
        }
    });
});
  

    