$(document).ready(function(){
    console.log("running!");

    $('#cookie-me').click(function(e){
                    // e.preventDefault(); 
                    console.log("Clicked!");

                    var n = $('#name').val(); 
                    var p = $('#password').val(); 

                    if (Cookies.get('name')) {
                        console.log(Cookies.get('name'));
                        if ( Cookies.get('password') == p) {
                            console.log("Success!");
                        } else {
                            e.preventDefault(); 
                        };
                    } else{

                        console.log("Setting");
                        Cookies.set('name', n)
                        Cookies.set('password', p)
                        e.preventDefault(); 
                        $('#name').val(''); 
                        $('#password').val('') ; 
                        $('form').append("Now Type your password!")
                    };

                });
    $("#img").animate({
        left: '850px',
        opacity: '0.9',
        height: '350px',
        width: '350px'
    });

});