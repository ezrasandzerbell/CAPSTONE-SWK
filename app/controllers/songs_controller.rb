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
      flash[:notice] = "Song added!"
      redirect_to user_songs_path(@user)
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
    if song_params[:title] != "" && @song.update(song_params)
      flash[:notice] = "You updated your song"
    else
      flash[:notice] = 'nope'
      redirect_to :edit
    end
  end

private
  def song_params
    params.require(:song).permit(:user_id, :title)
  end
end
