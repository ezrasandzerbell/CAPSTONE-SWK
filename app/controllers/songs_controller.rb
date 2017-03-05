class SongsController < ApplicationController

  def index
    @user = current_user
    @songs = @user.songs.all
  end

  def new
    @user = current_user
    @song = Song.new
  end

  def create
    @user = current_user
    @song = Song.new(:title => song_params[:title], :user_id => @user.id)
    if @song.save
      @cryptogram = Cryptogram.new(:word => song_params[:title], :song_id => @song.id)
      @word = @cryptogram.word
      @cryptogram.definition = @cryptogram.get_definition
      @cryptogram.synonyms = @cryptogram.get_synonym
      @cryptogram.note_array = @cryptogram.musicEncryption
      if @cryptogram.save
        flash[:notice] = "Cryptogram added!"
        redirect_to user_song_path(@user, @song)
      else
        flash[:notice] = "Song not added!"
        render :new
      end

    else
      flash[:notice] = "Song not added!"
      render :new
    end
  end

  def show
    @user = User.find(params[:user_id])
    @song = Song.find(params[:id])

  end

  def edit
    @user = User.find(params[:user_id])
    @song = Song.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @song = Song.find(params[:id])
    if @song.update(song_params)
      respond_to do |format|
        format.html { redirect_to user_song_path(@user, @song) }
        format.js
      end
    else
      flash[:notice] = 'nope'
      redirect_to :edit
    end
  end

private
  def song_params
    params.require(:song).permit(:user_id, :title, :thoughts, :avatar)
  end
end
