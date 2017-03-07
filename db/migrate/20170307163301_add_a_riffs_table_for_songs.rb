class AddARiffsTableForSongs < ActiveRecord::Migration[5.0]
  def change
    rename_table :songs, :riffs
  end
end
