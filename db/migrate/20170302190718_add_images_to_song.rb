class AddImagesToSong < ActiveRecord::Migration[5.0]
  def change
    add_attachment :songs, :avatar
  end
end
