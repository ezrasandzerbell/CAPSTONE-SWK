class UpdateRiffsUserIdToSongId < ActiveRecord::Migration[5.0]
  def change
    rename_column :riffs, :user_id, :song_id
  end
end
