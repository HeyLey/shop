$(document).ready(function() {
    $('ul.tabs-menu li a').click(function(event) {
        event.preventDefault();
        $(this).parent().addClass("current");
        $(this).parent().siblings().removeClass("current");
        var tab = $(this).attr("href");
        $(".tab-content").not(tab).css("display", "none");
        $(tab).fadeIn();
    });
} );

function comment(product_id) {
    var message = $('#comment').val();
    $.get("/comment?text=" + message + '&product_id=' + product_id, function( data ) {
        $("#comments").html(data);
        $('#comment').val("");
    });
}

function buyProduct(id) {
    window.location.href = ("/basket.jsp?order_id=" + id);
}