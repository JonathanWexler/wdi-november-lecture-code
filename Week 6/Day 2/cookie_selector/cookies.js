$(document).ready(function(){
    Cookies.set("heGllo", "GG");
    function set_cookies(){
        if (Cookies($('#cookie1').text())) {
            $('#cookie1-number').text(Cookies($('#cookie1').text()));
            $('#cookie2-number').text(Cookies($('#cookie2').text()));
            $('#cookie3-number').text(Cookies($('#cookie3').text()));
        } else {
            Cookies.set($('#cookie1').text(), $('#cookie1-number').text());
            Cookies.set($('#cookie2').text(), $('#cookie2-number').text());
            Cookies.set($('#cookie3').text(), $('#cookie3-number').text());
        };

    }
    $('.cookie').click(function(){
        // $()
        var cookie = $('#'+$(this).attr('id')).text();
        Cookies.set(cookie, parseInt(Cookies(cookie)) + 1);
        var num = Cookies(cookie);
        $('#'+ $(this).attr('id') + '-number').text(num);
        $('#line').text("You LOOOOVE " + cookie + " Cookies!!");

    });

    set_cookies();

});