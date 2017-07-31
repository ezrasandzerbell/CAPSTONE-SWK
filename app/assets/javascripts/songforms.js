$(document).on ("turbolinks:load", function(){
  event.preventDefault()

  // Show and hide image form
  $("#addImage").click(function(){
    $("#riff_image_form").show();
    $("#addImage").hide();
  });

  $("#hide_image_form").click(function(){
    $("#riff_image_form").hide();
    $("#addImage").show();
  });


  // Show and hide thoughts form
  $("#addThoughts").click(function(){
    $("#riff_thoughts_form").show();
    $("#addThoughts").hide();
  });

  $("#hide_thoughts_form").click(function(event){
    event.preventDefault();
    $("#riff_thoughts_form").hide();
    $("#addThoughts").show();
  });


  // Show and hide Sheet Music form
  $("#addSheetMusic").click(function(){
    $("#sheet_music_form").show();
    $("#addSheetMusic").hide()
    $("#createSheetMusic").hide();
  });
  $("#hide_sheet_music_form").click(function(){
    $("#sheet_music_form").hide();
    $("#addSheetMusic").show();
    $("#createSheetMusic").show();
  });

  // Show and hide Audio form
  $("#addSongAudio").click(function(){
    $("#song_audio_form").show();
    $('#addSongAudio').hide();
  });
  $("#hide_audio_form").click(function(){
    $("#song_audio_form").hide();
    $('#addSongAudio').show();
  });
});
