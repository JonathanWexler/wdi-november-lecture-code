
// Make sure the document is loaded and ready before making Jquery commands
$(document).ready(function() {
// All of the content for JS

        // function called test that sets an alert
        function test () {
            alert("Hello");
        }

        // some fade out and fade in jquery functions
        // $("body").fadeOut(4000);
        // $("body").fadeIn(4000);

        // an anonymous function assigned to a variable initialChange
        var initialChange = function () {
            $("body").animate( {
              opacity: 0.25,
              width: "70%"
          } , 2000 );
            console.log("Body is hidden");
        };

        // an anonymous function assigned to a variable changeOpacity
        var changeOpacity = function(){ $("body").animate( {opacity: 0.75, width: "90%"} , 2000 );}
        // alert("I'm clicked!");
        
        // on click, invoke anonymous functions defined above
        $('h1').click(changeOpacity);
        $('div').click(initialChange);
        // $('body').click(changeOpacity);

    });
