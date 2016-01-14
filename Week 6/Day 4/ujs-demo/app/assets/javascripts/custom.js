$(document).ready(function(){


    $('.delete-user').on('ajax:complete', function(e){
        $(e.currentTarget).parent().fadeOut();
    });

});