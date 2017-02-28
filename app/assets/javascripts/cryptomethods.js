$(document).on ("turbolinks:load", function(){
  event.preventDefault()
  $(".startButton").click(function() {
    encrypted_div = $(".encrypted_div").children("div")

    encrypted_div.each(function(i) {
        var el=$(this);
        setTimeout(function() {
          note = encrypted_div[i];
          note.click();
        }, i * 550);
    });


  });

  // ------ Code for clickable divs (encrypt/decrypt)

    $(".c").click(function() {
      var audioElement = document.createElement('audio');
      audioElement.setAttribute('src', '/audio/C3.mp3');
      audioElement.play();
    });
    $(".cSharp").click(function() {
      var audioElement = document.createElement('audio');
      audioElement.setAttribute('src', '/audio/Db3.mp3');
      audioElement.play();
    });
    $(".d").click(function() {
      var audioElement = document.createElement('audio');
      audioElement.setAttribute('src', '/audio/Gb3.mp3');
      audioElement.play();
    });
    $(".dSharp").click(function() {
      var audioElement = document.createElement('audio');
      audioElement.setAttribute('src', '/audio/Eb.mp3');
      audioElement.play();
    });
    $(".e").click(function() {
      var audioElement = document.createElement('audio');
      audioElement.setAttribute('src', '/audio/E3.mp3');
      audioElement.play();
    });
    $(".f").click(function() {
      var audioElement = document.createElement('audio');
      audioElement.setAttribute('src', '/audio/F3.mp3');
      audioElement.play();
    });
    $(".fSharp").click(function() {
      var audioElement = document.createElement('audio');
      audioElement.setAttribute('src', '/audio/Gb3.mp3');
      audioElement.play();
    });
    $(".g").click(function() {
      var audioElement = document.createElement('audio');
      audioElement.setAttribute('src', '/audio/G3.mp3');
      audioElement.play();
    });
    $(".gSharp").click(function() {
      var audioElement = document.createElement('audio');
      audioElement.setAttribute('src', '/audio/Ab3.mp3');
      audioElement.play();
    });
    $(".a").click(function() {
      var audioElement = document.createElement('audio');
      audioElement.setAttribute('src', '/audio/A3.mp3');
      audioElement.play();
    });
    $(".aSharp").click(function() {
      var audioElement = document.createElement('audio');
      audioElement.setAttribute('src', '/audio/Bb3.mp3');
      audioElement.play();
    });
    $(".b").click(function() {
      var audioElement = document.createElement('audio');
      audioElement.setAttribute('src', '/audio/B3.mp3');
      audioElement.play();
    });

  // ------ code for musical keyboard

  $(".c1").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/C1.mp3');
    audioElement.play();
  });
  $(".c1Sharp").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/Db.mp3');
    audioElement.play();
  });
  $(".d1").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/D1.mp3');
    audioElement.play();
  });
  $(".d1Sharp").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/Ebflat.mp3');
    audioElement.play();
  });
  $(".e1").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/E1.mp3');
    audioElement.play();
  });
  $(".f1").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/F1.mp3');
    audioElement.play();
  });
  $(".f1Sharp").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/Gb1.mp3');
    audioElement.play();
  });
  $(".g1").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/G1.mp3');
    audioElement.play();
  });
  $(".g1Sharp").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/Ab1.mp3');
    audioElement.play();
  });
  $(".a1").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/A1.mp3');
    audioElement.play();
  });
  $(".a1Sharp").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/Bb1.mp3');
    audioElement.play();
  });
  $(".b1").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/B1.mp3');
    audioElement.play();
  });
  $(".c2").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/C2.mp3');
    audioElement.play();
  });
  $(".c2Sharp").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/Db2.mp3');
    audioElement.play();
  });
  $(".d2").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/D2.mp3');
    audioElement.play();
  });
  $(".d2Sharp").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/Eb2.mp3');
    audioElement.play();
  });
  $(".e2").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/E2.mp3');
    audioElement.play();
  });
  $(".f2").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/F2.mp3');
    audioElement.play();
  });
  $(".f2Sharp").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/Gb2.mp3');
    audioElement.play();
  });
  $(".g2").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/G2.mp3');
    audioElement.play();
  });
  $(".g2Sharp").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/Ab2.mp3');
    audioElement.play();
  });
  $(".a2").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/A2.mp3');
    audioElement.play();
  });
  $(".a2Sharp").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/Bb2.mp3');
    audioElement.play();
  });
  $(".b2").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/B2.mp3');
    audioElement.play();
  });
  $(".c3").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/C3.mp3');
    audioElement.play();
  });
  $(".c3Sharp").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/Db3.mp3');
    audioElement.play();
  });
  $(".d3").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/D3.mp3');
    audioElement.play();
  });
  $(".d3Sharp").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/Eb3.mp3');
    audioElement.play();
  });
  $(".e3").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/E3.mp3');
    audioElement.play();
  });
  $(".f3").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/F3.mp3');
    audioElement.play();
  });
  $(".f3Sharp").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/Gb3.mp3');
    audioElement.play();
  });
  $(".g3").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/G3.mp3');
    audioElement.play();
  });
  $(".g3Sharp").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/Ab3.mp3');
    audioElement.play();
  });
  $(".a3").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/A3.mp3');
    audioElement.play();
  });
  $(".a3Sharp").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/Bb3.mp3');
    audioElement.play();
  });
  $(".b3").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/B3.mp3');
    audioElement.play();
  });
  $(".c4").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/C4.mp3');
    audioElement.play();
  });
  $(".c4Sharp").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/Db4.mp3');
    audioElement.play();
  });
  $(".d4").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/D4.mp3');
    audioElement.play();
  });
  $(".d4Sharp").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/Eb4.mp3');
    audioElement.play();
  });
  $(".e4").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/E4.mp3');
    audioElement.play();
  });
  $(".f4").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/F4.mp3');
    audioElement.play();
  });
  $(".f4Sharp").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/Gb4.mp3');
    audioElement.play();
  });
  $(".g4").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/G4.mp3');
    audioElement.play();
  });
  $(".g4Sharp").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/Ab4.mp3');
    audioElement.play();
  });
  $(".a4").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/A4.mp3');
    audioElement.play();
  });
  $(".a4Sharp").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/Bb4.mp3');
    audioElement.play();
  });
  $(".b4").click(function() {
    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', '/audio/B4.mp3');
    audioElement.play();
  });

    $('.keyboard').keydown(function (e) {
     var key = e.which;

     if(key == 49)
      { $('.c4').click()  ;
        return false;  }

      if(key == 50)
       { $('.c4Sharp').click()  ;
         return false;  }

       if(key == 51)
        { $('.d4').click()  ;
          return false;  }

        if(key == 52)
         { $('.d4Sharp').click()  ;
           return false;  }

         if(key == 53)
          { $('.e4').click()  ;
            return false;  }

          if(key == 54)
           { $('.f4').click()  ;
             return false;  }

           if(key == 55)
            { $('.f4Sharp').click()  ;
              return false;  }

            if(key == 56)
             { $('.g4').click()  ;
               return false;  }

             if(key == 57)
              { $('.g4Sharp').click()  ;
                return false;  }

              if(key == 48)
               { $('.a4').click()  ;
                 return false;  }

               if(key == 189)
                { $('.a4Sharp').click()  ;
                  return false;  }

                if(key == 187)
                 { $('.b4').click()  ;
                   return false;  }

      if(key == 81)
       { $('.c3').click()  ;
         return false;  }

       if(key == 87)
        { $('.c3Sharp').click()  ;
          return false;  }

        if(key == 69)
         { $('.d3').click()  ;
           return false;  }

         if(key == 82)
          { $('.d3Sharp').click()  ;
            return false;  }

          if(key == 84)
           { $('.e3').click()  ;
             return false;  }

           if(key == 89)
            { $('.f3').click()  ;
              return false;  }

            if(key == 85)
             { $('.f3Sharp').click()  ;
               return false;  }

             if(key == 73)
              { $('.g3').click()  ;
                return false;  }

              if(key == 79)
               { $('.g3Sharp').click()  ;
                 return false;  }

               if(key == 80)
                { $('.a3').click()  ;
                  return false;  }

                if(key == 219)
                 { $('.a3Sharp').click()  ;
                   return false;  }

                 if(key == 221)
                  { $('.b3').click()  ;
                    return false;  }

          if(key == 65)
           { $('.c2').click()  ;
             return false;  }

           if(key == 83)
            { $('.c2Sharp').click()  ;
              return false;  }

            if(key == 68)
             { $('.d2').click()  ;
               return false;  }

             if(key == 70)
              { $('.d2Sharp').click()  ;
                return false;  }

              if(key == 71)
               { $('.e2').click()  ;
                 return false;  }

               if(key == 72)
                { $('.f2').click()  ;
                  return false;  }

                if(key == 74)
                 { $('.f2Sharp').click()  ;
                   return false;  }

                 if(key == 75)
                  { $('.g2').click()  ;
                    return false;  }

                  if(key == 76)
                   { $('.g2Sharp').click()  ;
                     return false;  }

                   if(key == 186)
                    { $('.a2').click()  ;
                      return false;  }

                    if(key == 222)
                     { $('.a2Sharp').click()  ;
                       return false;  }

                     if(key == 13)
                      { $('.b2').click()  ;
                        return false;  }

          if(key == 90)
           { $('.c1').click()  ;
             return false;  }

           if(key == 88)
            { $('.c1Sharp').click()  ;
              return false;  }

            if(key == 67)
             { $('.d1').click()  ;
               return false;  }

             if(key == 86)
              { $('.d1Sharp').click()  ;
                return false;  }

              if(key == 66)
               { $('.e1').click()  ;
                 return false;  }

               if(key == 78)
                { $('.f1').click()  ;
                  return false;  }

                if(key == 77)
                 { $('.f1Sharp').click()  ;
                   return false;  }

                 if(key == 188)
                  { $('.g1').click()  ;
                    return false;  }

                  if(key == 190)
                   { $('.g1Sharp').click()  ;
                     return false;  }

                   if(key == 191)
                    { $('.a1').click()  ;
                      return false;  }

                    if(key == 37)
                     { $('.a1Sharp').click()  ;
                       return false;  }

                     if(key == 39)
                      { $('.b1').click()  ;
                        return false;  }

  });
});
