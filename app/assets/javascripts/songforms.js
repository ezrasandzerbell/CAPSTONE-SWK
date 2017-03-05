$(document).on ("turbolinks:load", function(){
  event.preventDefault()
  $("#addImage").click(function(){
    $("#song_image_form").show();
    $("#song_thoughts_form").hide();
  });
  $("#hide_song_form").click(function(){
    $("#song_image_form").hide();
  });

  $("#addThoughts").click(function(){
    $("#song_thoughts_form").show();
    $("#song_image_form").hide();
  });
  $("#hide_thoughts_form").click(function(){
    $("#song_thoughts_form").hide();
  });

});
