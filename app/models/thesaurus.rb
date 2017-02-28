# class Thesaurus
#   before_create :get_words
#
#   def get_words
#     response = HTTParty.get "https://wordsapiv1.p.mashape.com/words/" + @word ,
#       headers:{
#         "X-Mashape-Key" => "uyBV6GjxIomshhoQwaFdf5Gu017Ip1QgUNhjsntMz0LsypvDbj",
#         "Accept" => "application/json"
#       }
#   end
# end
