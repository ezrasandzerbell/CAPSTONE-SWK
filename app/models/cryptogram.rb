class Cryptogram < ActiveRecord::Base

  validates :riff_id, :word, :presence => true

  belongs_to :riff


  def musicEncryption

      musicCipher = {"a" => "<div class='col-md-1 e'>e</div>",
                     "b" => "<div class='col-md-1 e'>e</div>",
                     "c" => "<div class='col-md-1 dSharp'>d#</div>",
                     "d" => "<div class='col-md-1 fSharp'>f#</div>",
                     "e" => "<div class='col-md-1 c'>c</div>",
                     "f" => "<div class='col-md-1 c'>c</div>",
                     "g" => "<div class='col-md-1 gSharp'>g#</div>",
                     "h" => "<div class='col-md-1 c'>c</div>",
                     "i" => "<div class='col-md-1 f'>f</div>",
                     "j" => "<div class='col-md-1 f'>f</div>",
                     "k" => "<div class='col-md-1 aSharp'>a#</div>",
                     "l" => "<div class='col-md-1 fSharp'>f#</div>",
                     "m" => "<div class='col-md-1 gSharp'>g#</div>",
                     "n" => "<div class='col-md-1 g'>g</div>",
                     "o" => "<div class='col-md-1 a'>a</div>",
                     "p" => "<div class='col-md-1 c'>c</div>",
                     "q" => "<div class='col-md-1 b'>b</div>",
                     "r" => "<div class='col-md-1 d'>d</div>",
                     "s" => "<div class='col-md-1 gSharp'>g#</div>",
                     "t" => "<div class='col-md-1 a'>a</div>",
                     "u" => "<div class='col-md-1 cSharp'>c#</div>",
                     "v" => "<div class='col-md-1 cSharp'>c#</div>",
                     "w" => "<div class='col-md-1 cSharp'>c#</div>",
                     "x" => "<div class='col-md-1 aSharp'>a#</div>",
                     "y" => "<div class='col-md-1 f'>f</div>",
                     "z" => "<div class='col-md-1 d'>d</div>",
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
