$(document).ready(function(){

    // load new image content in "inner" div with link url
    $(".lightbox-image").click(function(){
        $(".lightbox-outer").show();
        var url = $(this).data("image-link");
        $(".lightbox-inner").html("<img src='" + url +"'></img>")
    });    

    // Pull data from article tag and load iFrame to inner div
    $(".lightbox-article").click(function(){
        $(".lightbox-outer").show();
        var url = $(this).data("image-link");
        $(".lightbox-inner").html("<iframe src='" + url + "' frameborder='0'></iframe>");
    });    

    // Hide the outer div and its contents when clicked
    $(".lightbox-outer").click(function(){
        $(".lightbox-outer").hide();
    });


});