class CryptoApiData < ActiveRecord::Migration[5.0]
  def change
    add_column :cryptograms, :api_words, :string
  end
end
