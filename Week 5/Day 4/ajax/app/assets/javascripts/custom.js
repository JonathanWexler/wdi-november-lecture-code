$(document).ready(function () {
    $("#post").click(function(){


        $.ajax({
            type:"POST",
            url:"http://art-share.herokuapp.com/api/v1/users/",
            data:{
                user: {
                  fname: "jon",
                  lname: "wexler",
                  password: "my_passw0rd",
                  email: "jon@nycda.com"
              }
          },
          success: function (response) {
            alert("user posted");
          }
      });
    });

    $("#search").click(function(){
        alert("clicked");

        $.ajax({
            type:"GET",
            url:"http://art-share.herokuapp.com/api/v1/users/",
            success: function (response) {
                // alert('data returned is: ' + d);
                var items = response['result'].length
                var results = response['result']
                for (var i = 0; i < items; i++) {
                    var this_user = results[i]
                    // console.log(a.email)
                    if (this_user.fname == "jon") {
                        $("#search").append("<h5>" + this_user.email + " </h5>");
                    };
                    // console.log(results[i]);
                };

            }
        });
    });
});

