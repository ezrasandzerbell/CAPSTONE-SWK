$(document).on ("turbolinks:load", function(){
  event.preventDefault()

  // Show and hide song form
  $("#addImage").click(function(){
    $("#song_image_form").show();
    $("#song_thoughts_form").hide();
    $("#sheet_music_form").hide();
    $("#song_audio_form").hide();
  });
  $("#hide_song_form").click(function(){
    $("#song_image_form").hide();
  });

  // Show and hide thoughts form

  $("#addThoughts").click(function(){
    $("#song_thoughts_form").show();
    $("#song_image_form").hide();
    $("#sheet_music_form").hide();
    $("#song_audio_form").hide();
  });
  $("#hide_thoughts_form").click(function(){
    $("#song_thoughts_form").hide();
  });

  // Show and hide Sheet Music form

  $("#addSheetMusic").click(function(){
    $("#sheet_music_form").show();
    $("#song_image_form").hide();
    $("#song_thoughts_form").hide();
    $("#song_audio_form").hide();
  });
  $("#hide_sheet_music_form").click(function(){
    $("#sheet_music_form").hide();
  });

  // Show and hide Audio form
  $("#addSongAudio").click(function(){
    $("#song_audio_form").show();
    $("#song_image_form").hide();
    $("#song_thoughts_form").hide();
    $("#sheet_music_form").hide();
  });
  $("#hide_sheet_music_form").click(function(){
    $("#song_audio_form").hide();
  });

});
