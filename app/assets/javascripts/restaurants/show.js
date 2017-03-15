$(document).on("turbolinks:load",function(){

  var text_max = 140;
   $('#textarea_feedback').html(text_max + ' characters remaining');

   $('#textarea').keyup(function() {
       var text_length = $('#textarea').val().length;
       var text_remaining = text_max - text_length;

       $('#textarea_feedback').html(text_remaining + ' characters remaining');
   });

  var userPoints = parseFloat($(".points-remaining p strong").text());
  for (i=0; i < $(".reward-button > p em.reward-point").length; i++){
    var rewardPoints = parseFloat($(".reward-button > p em.reward-point")[i].innerText);
    var rewardButton = $(".reward-button")[i];
    // debugger;
    if (userPoints < rewardPoints){
      $(".positioning-box").children(".reward-button").addClass("nope");
      $(".positioning-box").removeClass("on-button");
    }};

  $(".on-button").on('click',function(e){
    $(this).find(".reward-modal").fadeIn("slow");
  });

  $(".close").on("click",function(e){
    e.stopPropagation();
    $(".modal").fadeOut("slow");
  });

  $(".positioning-box").on("click", function(e){
    if ($(this).children(".nope")){
      e.stopPropagation();
      alert("You don't have enough points to redeem this reward.");
    }
  });

  $(".redeem-button").on('click', function(e){
    e.stopPropagation();
    var user_id = $(this).children(".hidden-user").val();
    var reward_id = $(this).children(".hidden-reward").val();
    var auth_token = $(this).children(".hidden-authenticity").val();
    $.ajax({
      url:"/redemption",
      method:"POST",
      data:{
        "reward_id": reward_id,
        "user_id": user_id,
        "id": user_id,
        "authenticity_token": auth_token
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
    $(this).css("box-shadow", "none");
  });
  $('#logo-button').on('mouseup', function() {
    $(this).css("box-shadow", "2px 2px 2px gray");
  });

  $('#logo-button').mouseenter(function() {
    $('#shout-static').toggle();
    $('#shout-hover').css('display', 'block');
  }).mouseleave(function(){
    $('#shout-static').css('display', 'block');
    $('#shout-hover').css('display', 'none');
  })

  $('#shout-modal-call-button-outline').on('click', function() {
    $('.shout-modal').fadeIn();
  });

  $('#shout-modal-call-button-outline').mousedown(function(){
    $('#shout-modal-call-button-outline').css('box-shadow', 'none')
  }).mouseup(function(){
    $('#shout-modal-call-button-outline').css('box-shadow', '2px 2px 2px gray')
  });

  $('#shout-modal-call-button-outline').mouseenter(function() {
    $('#shout-call-static').toggle();
    $('#shout-call-hover').css('display', 'block');
  }).mouseleave(function(){
    $('#shout-call-static').css('display', 'block');
    $('#shout-call-hover').css('display', 'none');
  });

  $('#reward-modal-call-button').on('click', function() {
    $('.rewards-modal').fadeIn();
  });

  $('.shoutout-box').on('click', function() {
    $(this).children('.tweet-shoutout-box').slideToggle();
  });

  $('#avatar').on('click', function() {
    $('.dropdown').slideToggle()
  });

//  Insert Jquery function for my-resto. hide all restaurant content
//  When you click on menu-item restaurant

    $('.menu-item').on('click', function(){
      $('.my-restaurant').css('display', 'none');
      var id = $(this).attr('id');
      var name = "#" + id;
      var text = name +'.my-restaurant';
      $(text).css('display', 'block');
    });



});
