$(document).on("turbolinks:load",function(){
// Capturing the value of the dropdown list for shoutout
  var initial_selected = $('#shout_restaurant_id :selected').text();
  var lengthToSubtract = initial_selected.length;
  var toSubtract = lengthToSubtract +12;
  $('select').change(function(){
    var resto_selected = $(":selected").text().length;
    var resto_value = $(":selected").val();
    toSubtract = resto_selected + 12 - lengthToSubtract;
    console.log(toSubtract);
    text_max = 140 - toSubtract;
    $('#textarea_feedback').html(text_max + ' characters remaining');
  });
// Counting the twitter characters in shoutout form
  var text_max = 140 - toSubtract;

   $('#textarea_feedback').html(text_max + ' characters remaining');
   var text_area = $('.field > #shout_twitter_text');
   text_area.keydown(function(e) {
     e.stopPropagation();
     var text_length = text_area.val();
     var len = text_length.length;
     var text_remaining = text_max - len;
     $('#textarea_feedback').text((text_max - len) + " characters remaining");
   });

  var userPoints = parseFloat($(".points-remaining p strong").text());
  for (i=0; i < $("em.reward-point").length; i++){
    var rewardPoints = parseFloat($("em.reward-point")[i].innerText);
    var rewardButton = $(".reward-button")[i];
    if (userPoints < rewardPoints){
      var positionButton = $(".positioning-box")[i];
      $(positionButton).children(rewardButton).addClass("nope");
      $(positionButton).removeClass('on-button');
    }};

  $(".on-button").on('click',function(e){
    $(this).find(".reward-modal").fadeIn("slow");
  });

  $(".close").on("click",function(e){
    e.stopPropagation();
    $(".modal").fadeOut("slow");
    $(".desktop-view").fadeIn("slow");
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
      location.pathname = "/"
    }).fail(function(){
      console.log("Failed");
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
    if ($(document).width() <= "1024") {
      $('#shout-static').toggle();
      $('#shout-hover').css('display', 'block');
    }
  }).mouseleave(function(){
    if ($(document).width() <= "1024") {
      $('#shout-static').css('display', 'block');
      $('#shout-hover').css('display', 'none');
    }
  });

  $('#shout-modal-call-button-outline').on('click', function() {
    $('.desktop-view').fadeOut();
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
    if ($(document).width() <= "1024") {
      $('.dropdown').slideToggle()
    }
  });

//This is the dropdown for the gear in mobile views
  $('.left-footer').on('click', function(){
    $('.dropdown-bottom').toggle()
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

    $('#reward-drop-down ').click(function(){
        $(this).next('#reward-options').slideToggle("fast");
    });
});
