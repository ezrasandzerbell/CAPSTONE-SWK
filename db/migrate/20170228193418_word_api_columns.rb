class WordApiColumns < ActiveRecord::Migration[5.0]
  def change
    remove_column :cryptograms, :api_words, :string
    add_column :cryptograms, :definition, :string
    add_column :cryptograms, :synonyms, :string, array: true
  end
end
