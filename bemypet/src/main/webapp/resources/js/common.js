$(function(){
    $('#main-menu > li').mouseenter(function(){
        $(this).find('.sub-menu').stop().slideDown();
        $(this).find('.sub-menu-bg').stop().slideDown();
    });
    $('#main-menu').mouseleave(function(){
        $(this).find('.sub-menu').stop().slideUp();
        $(this).find('.sub-menu-bg').stop().slideUp();
    });
    
    $('#dt.top-menu').mouseenter(function(){
        $(this).find('.tsub-menu').stop().slideDown();
    });
    $('#dt.top-menu').mouseleave(function(){
        $(this).find('.tsub-menu').stop().slideUp();
    
    });


    $('#trigger').click(function(e){
        e.preventDefault();
        $(this).toggleClass('active');
        $('#main-menu').toggleClass('active');
        $('.main-darkbox').toggleClass('active');
    });
});


