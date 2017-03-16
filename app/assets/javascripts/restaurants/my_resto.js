$(document).on("turbolinks:load", function(){

  $(".button_to ").on('click', function(e){

    e.preventDefault();
    e.stopPropagation();

    var action_url = $(this).attr('action');
    var redempContainer = $(this).parent();
    redempContainer.addClass("selectedContainer")

    $.ajax({
      url: action_url,
      method: "POST",
      dataType: "json"
    }).done(function(data){
      $(".selectedContainer").css('display', 'none');
    }).fail(function(){
      console.log("Fail");
    });

  });
});
