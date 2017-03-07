$(document).on ("turbolinks:load", function(){
  event.preventDefault()

  // Show and hide riff form
  $("#addImage").click(function(){
    $("#riff_image_form").show();
    $("#riff_thoughts_form").hide();
    $("#sheet_music_form").hide();
    $("#song_audio_form").hide();
  });
  $("#hide_riff_form").click(function(){
    $("#riff_image_form").hide();
  });

  // Show and hide thoughts form

  $("#addThoughts").click(function(){
    $("#riff_thoughts_form").show();
    $("#riff_image_form").hide();
    $("#sheet_music_form").hide();
    $("#song_audio_form").hide();
  });
  $("#hide_thoughts_form").click(function(){
    $("#riff_thoughts_form").hide();
  });

  // Show and hide Sheet Music form

  $("#addSheetMusic").click(function(){
    $("#sheet_music_form").show();
    $("#riff_image_form").hide();
    $("#riff_thoughts_form").hide();
    $("#song_audio_form").hide();
  });
  $("#hide_sheet_music_form").click(function(){
    $("#sheet_music_form").hide();
  });

  // Show and hide Audio form
  $("#addSongAudio").click(function(){
    $("#song_audio_form").show();
    $("#riff_image_form").hide();
    $("#riff_thoughts_form").hide();
    $("#sheet_music_form").hide();
  });
  $("#hide_sheet_music_form").click(function(){
    $("#song_audio_form").hide();
  });

});
