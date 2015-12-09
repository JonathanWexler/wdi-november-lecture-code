$(document).ready(function(){

setInterval(function(){
    var date = new Date();
    const hour = date.getHours();
    hour += 1;

    $("#hour").text(hour);
    $("#minute").text(date.getMinutes());
    $("#second").text(date.getSeconds());
    $("#millisecond").text(date.getMilliseconds());
}, 1);


});