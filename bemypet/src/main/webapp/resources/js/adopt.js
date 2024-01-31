$(function(){

    $('.adopt-wrap-md').addClass('adopt-inactive');
    $('.adopt-wrap-bd').addClass('adopt-inactive');    
 
    $("input[name='radio-set']").change(function() {
        if($("input[name='radio-set']:checked").val()=='adopt-sm'){
            $('.adopt-wrap').removeClass('adopt-active adopt-inactive');
            $('.adopt-wrap-sm').addClass('adopt-active');
            $('.adopt-wrap-md').addClass('adopt-inactive');
            $('.adopt-wrap-bd').addClass('adopt-inactive');      

        } else if($("input[name='radio-set']:checked").val()=='adopt-md') {
            $('.adopt-wrap').removeClass('adopt-active adopt-inactive');
            $('.adopt-wrap-sm').addClass('adopt-inactive');
            $('.adopt-wrap-md').addClass('adopt-active');
            $('.adopt-wrap-bd').addClass('adopt-inactive');

        } else if($("input[name='radio-set']:checked").val()=='adopt-bd') {
            $('.adopt-wrap').removeClass('adopt-active adopt-inactive');
            $('.adopt-wrap-sm').addClass('adopt-inactive');
            $('.adopt-wrap-md').addClass('adopt-inactive');
            $('.adopt-wrap-bd').addClass('adopt-active');
        }
    });

    $('.adopt-wrap > .owl-carousel').owlCarousel({
        loop:true,
        nav:true,
        responsiveClass:true,
        responsive: {
            0: { items:1 },
            650: { 
                items:2,
                margin:10                   
            },
            750: { 
                items:2,
                margin:32                    
            },
            1050: {
                items:3,
                margin:20
            },
            1450: {
                items:3,
                margin:50
            }
        }
    });
   
});