//Script Filter
jQuery(document).ready(function( $ ) 

{
    $(window).load(function () {
        // init Isotope
        var $todos = $('.todos').isotope({
            itemSelector: '.todo',
            layoutMode: 'fitRows'
        });
        $(".filter-btn").click(function () {
            var data_filter = $(this).attr("data-filter");
            $todos.isotope({
                filter: data_filter
            });
            $(".filter-btn").removeClass("active");
            $(".filter-btn").removeClass("shadow");
            $(this).addClass("active");
            $(this).addClass("shadow");
            return false;
        });
    })
});
