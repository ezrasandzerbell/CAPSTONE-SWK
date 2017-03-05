class AddPaperclipForSongAudioAndSheetmusic < ActiveRecord::Migration[5.0]
  def change
    add_attachment :songs, :sheet_music
    add_attachment :songs, :song_audio
  end
end
