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
    $(this).find(".reward-modal").fadeIn("slow");
  });

  $(".close").on("click",function(e){
    e.stopPropagation();
    $(".modal").fadeOut("slow");
  });

  $(".nope").on("click", function(e){
    e.stopPropagation();
    alert("You don't have enough points to redeem this reward.");
  });

  $(".redeem-button").on('click', function(e){
    e.stopPropagation();
    var user_id = $(this).children(".hidden-user").val();
    var reward_id = $(this).children(".hidden-reward").val();
    $.ajax({
      url:"/redemption",
      method:"POST",
      data:{
        "reward_id": reward_id,
        "user_id": user_id,
        "id": user_id
      },
      dataType:"json"
    }).done(function(data){
      console.log(data)
      debugger;
      location.pathname = "/"
    }).fail(function(){
      console.log("Failed");
      debugger;
      location.reload();
    });
  });

  $('#logo-button').on('mousedown', function() {
    $(this).css("box-shadow", "inset 10px 10px 10px black");
    $('#rick').css("display", "block")
  });
  $('#logo-button').on('mouseup', function() {
    $(this).css("box-shadow", "10px 10px 10px black");
    $('#rick').css("display", "none")
  });

  $('#shout-modal-call-button').on('click', function() {
    $('.shout-modal').fadeIn();
  });

  $('#reward-modal-call-button').on('click', function() {
    $('.rewards-modal').fadeIn();
  });

  $('#avatar').on('click', function() {
    $('.dropdown').slideToggle()
  });

});
