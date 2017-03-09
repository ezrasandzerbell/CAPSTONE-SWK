class AddImgToAlbums < ActiveRecord::Migration[5.0]
  def change
    add_attachment :albums, :avatar
  end
end
