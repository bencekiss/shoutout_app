$(document).on("turbolinks:load",function(){

  var userPoints = parseFloat($(".points-remaining p strong").text());
  for (i=0; i < $(".reward-button > p em.reward-point").length; i++){
    var rewardPoints = parseFloat($(".reward-button > p em.reward-point")[i].innerText);
    var rewardButton = $(".reward-button")[i];
    // debugger;
    if (userPoints < rewardPoints){
      $(rewardButton).addClass("nope");
      $(rewardButton).removeClass("on-button");
    }};

  $(".on-button").on('click',function(e){
    $(this).children(".reward-modal").fadeIn("slow");
  });
  $(".close").on("click",function(e){
    e.stopPropagation();
    $(".reward-modal").fadeOut("slow");
  });


  $(".redeem-button").on('click', function(e){
    e.stopPropagation();
    var user_id = $(this).children(".hidden-user").val();
    var reward_id = $(this).children(".hidden-reward").val();
    $.ajax({
      url:"/users/"+ user_id,
      method:"POST",
      data:{
        "reward_id": reward_id,
        "user_id": user_id,
        "id": user_id
      },
      dataType:"json"
    }).done(function(data){
      console.log(data)
      location.pathname = "users/" + user_id
    }).fail(function(){
      console.log("Failed");
      location.reload();
      alert("You don't have enough points to redeem this reward.")
    });
  });

});
