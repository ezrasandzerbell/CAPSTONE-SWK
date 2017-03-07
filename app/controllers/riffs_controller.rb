class RiffsController < ApplicationController

  def new
    @user = current_user
    @song = Song.find(params[:song_id])
    @album = Album.find(@song.album_id)
    @riff = Riff.new
  end

  def create
    @user = current_user
    @song = Song.find(params[:song_id])
    @album = Album.find(@song.album_id)
    @riff = Riff.new(:title => riff_params[:title], :song_id => @song.id)
    if @riff.save
      @cryptogram = Cryptogram.new(:word => riff_params[:title], :riff_id => @riff.id)
      @word = @cryptogram.word
      @cryptogram.note_array = @cryptogram.musicEncryption
      if @cryptogram.save
        flash[:notice] = "Cryptogram added!"
        redirect_to song_riff_path(@song, @riff)
      else
        flash[:notice] = "Riff not added!"
        render :new
      end

    else
      flash[:notice] = "Riff not added!"
      render :new
    end
  end

  def show
    @user = current_user
    @song = Song.find(params[:song_id])
    @album = Album.find(@song.album_id)
    @riff = Riff.find(params[:id])
  end

  def edit
    @@user = current_user
    @song = Song.find(params[:song_id])
    @album = Album.find(@song.album_id)
    @riff = Riff.find(params[:id])
  end

  def update
    @@user = current_user
    @song = Song.find(params[:song_id])
    @album = Album.find(@song.album_id)
    @riff = Riff.find(params[:id])
    if @riff.update(riff_params)
      respond_to do |format|
        format.html { redirect_to song_riff_path(@song, @riff) }
        format.js
      end
    else
      flash[:notice] = 'nope'
      redirect_to :edit
    end
  end

private
  def riff_params
    params.require(:riff).permit(:title, :song_id, :thoughts, :avatar, :sheet_music, :song_audio)
  end
end
