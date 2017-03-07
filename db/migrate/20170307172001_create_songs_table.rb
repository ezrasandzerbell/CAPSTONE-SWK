class CreateSongsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string "title"
      t.string "details"
      t.integer "album_id"
    end
    create_table :albums do |t|
      t.string "title"
      t.string "details"
      t.integer "user_id"
    end
  end
end
