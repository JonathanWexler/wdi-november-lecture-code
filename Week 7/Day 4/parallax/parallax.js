$(document).ready(function(){

    $(window).scroll(function() {
        var j = $(window).scrollTop();

        // console.log(j);
        // if (j>100) {
            $(".second-image").css('top', (1000-j));
            // $(".main-image").css('margin-top', (j));
            // console.log("OK");
        // };
        console.log(j);
    });

});