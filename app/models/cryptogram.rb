class Cryptogram < ActiveRecord::Base

  validates :riff_id, :word, :presence => true

  belongs_to :riff


  def musicEncryption


      musicCipher = {"a" => "<div class='col-md-1 e' style='text-align:center;'>e</div>",
                     "b" => "<div class='col-md-1 e' style='text-align:center;'>e</div>",
                     "c" => "<div class='col-md-1 dSharp' style='text-align:center;'>d#</div>",
                     "d" => "<div class='col-md-1 fSharp' style='text-align:center;'>f#</div>",
                     "e" => "<div class='col-md-1 c' style='text-align:center;'>c</div>",
                     "f" => "<div class='col-md-1 c' style='text-align:center;'>c</div>",
                     "g" => "<div class='col-md-1 gSharp' style='text-align:center;'>g#</div>",
                     "h" => "<div class='col-md-1 c' style='text-align:center;'>c</div>",
                     "i" => "<div class='col-md-1 f' style='text-align:center;'>f</div>",
                     "j" => "<div class='col-md-1 f' style='text-align:center;'>f</div>",
                     "k" => "<div class='col-md-1 aSharp' style='text-align:center;'>a#</div>",
                     "l" => "<div class='col-md-1 fSharp' style='text-align:center;'>f#</div>",
                     "m" => "<div class='col-md-1 gSharp' style='text-align:center;'>g#</div>",
                     "n" => "<div class='col-md-1 g' style='text-align:center;'>g</div>",
                     "o" => "<div class='col-md-1 a' style='text-align:center;'>a</div>",
                     "p" => "<div class='col-md-1 c' style='text-align:center;'>c</div>",
                     "q" => "<div class='col-md-1 b' style='text-align:center;'>b</div>",
                     "r" => "<div class='col-md-1 d' style='text-align:center;'>d</div>",
                     "s" => "<div class='col-md-1 gSharp' style='text-align:center;'>g#</div>",
                     "t" => "<div class='col-md-1 a' style='text-align:center;'>a</div>",
                     "u" => "<div class='col-md-1 cSharp' style='text-align:center;'>c#</div>",
                     "v" => "<div class='col-md-1 cSharp' style='text-align:center;'>c#</div>",
                     "w" => "<div class='col-md-1 cSharp' style='text-align:center;'>c#</div>",
                     "x" => "<div class='col-md-1 aSharp' style='text-align:center;'>a#</div>",
                     "y" => "<div class='col-md-1 f' style='text-align:center;'>f</div>",
                     "z" => "<div class='col-md-1 d' style='text-align:center;'>d</div>",
                     " " => ""}

      outputArray = []

      inputArray = self.word.downcase().split("")

      inputArray.each do |letter|
        if letter =~ /[a-zA-Z]/
        outputArray.push(musicCipher.fetch(letter))
        end
      end
      return outputArray
    end
end
