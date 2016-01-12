$(document).ready(function(){


    $('#submit').click(function(event){
        var f = $('#fname').val();
        var p = $('#password').val();
        if (Cookies.get('fname')) {
            // alert('COOKIE IS SET!');
            if (Cookies.get('fname') == f) {
                if (Cookies.get('password') == p) {
                    alert("INFO MATCHES");

                } else {
                    $(".jeff-tomato").text(p + " is incorrect!");
                    event.preventDefault();
                };
            };
        } else {
            set_cookie(f,p);
            event.preventDefault();

        };
        
        // alert(f);
        // store_values($('form'))
        // set_cookie(store_values)
    });

    // $(".jeff-tomato").text(Cookies.get('fname'));
    

    function set_cookie(fname, password){
        Cookies.set('fname', fname);
        Cookies.set('password', password);
    }

    // function store_values (form) {
    //  set_cookie('fname', form.fname.value);
    //  set_cookie('password', form.password.value);
    //  return true;
    // }

});