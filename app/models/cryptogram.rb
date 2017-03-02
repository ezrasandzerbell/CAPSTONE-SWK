class Cryptogram < ActiveRecord::Base
  validates :song_id, :word, :presence => true
  belongs_to :song


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


    def get_definition
      definitionArray = []
      response = HTTParty.get("https://wordsapiv1.p.mashape.com/words/" + self.word,
        headers:{
          "X-Mashape-Key" => "uyBV6GjxIomshhoQwaFdf5Gu017Ip1QgUNhjsntMz0LsypvDbj",
          "Accept" => "application/json"
        })
        if response.parsed_response["results"].kind_of?(Array)
          response.parsed_response["results"].each do |result|
            if result["definition"]
            definitionArray.push(result["definition"])
            end
          end
        end
      return definitionArray
    end

    def get_synonym
      synonymArray = []
      response = HTTParty.get("https://wordsapiv1.p.mashape.com/words/" + self.word,
        headers:{
          "X-Mashape-Key" => ENV["API_KEY"],
          "Accept" => "application/json"
        })
      if response.parsed_response["results"].kind_of?(Array)
        response.parsed_response["results"].each do |result|
          if result["synonyms"]
            result["synonyms"].each do |syn|
              synonymArray.push(syn)
            end
          end
        end
      end
      return synonymArray
    end

end
