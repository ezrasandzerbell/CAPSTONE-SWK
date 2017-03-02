class AddNotesToSong < ActiveRecord::Migration[5.0]
  def change
    add_column :songs, :thoughts, :string
  end
end
