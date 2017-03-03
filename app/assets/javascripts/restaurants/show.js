$(document).on("turbolinks:load",function(){
  $(".reward-button").on('click',function(e){
    $(this).children(".reward-modal").fadeIn("slow");
  });
  $(".close").on("click",function(e){
    e.stopPropagation();
    $(".reward-modal").fadeOut("slow");
  });
  $(".redeem-button").on('click', function(e){
    e.stopPropagation();
    var user_id = $(".hidden-user").val();
    var reward_id = $(".hidden-reward").val();
    $.ajax({
      url:"/users/"+ user_id,
      method:"POST",
      data:{
        "reward_id": reward_id,
        "user_id": user_id,
        "id": user_id
      },
      dataType:"html"

    }).done(function(data){
      console.log(data);
      window.location.pathname = "/users/" + user_id;
    }).fail(function(){
      console.log("Failed");
    });
  });
});
