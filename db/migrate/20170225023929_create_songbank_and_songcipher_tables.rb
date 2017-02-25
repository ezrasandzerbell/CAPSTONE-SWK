class CreateSongbankAndSongcipherTables < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :lyrics
      t.string :user_id
    end
    create_table :cryptograms do |t|
      t.string :word
      t.string :image
      t.integer :magic_num
      t.string :letter_array, array: true
      t.string :note_array, array: true
      t.string :card_array, array: true
      t.string :chord_array, array: true
      t.integer :song_id
    end
  end
end
