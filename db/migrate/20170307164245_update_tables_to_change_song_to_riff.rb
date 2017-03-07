class UpdateTablesToChangeSongToRiff < ActiveRecord::Migration[5.0]
  def change
    rename_column :cryptograms, :song_id, :riff_id
  end
end
