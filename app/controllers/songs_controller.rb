class SongsController < ApplicationController

  def index
    @user = current_user
    @album = Album.find(params[:album_id])
  end

  def new
    @user = current_user
    @album = Album.find(params[:album_id])
    @song = Song.new
  end

  def create
    @user = current_user
    @album = Album.find(params[:album_id])
    @song = Song.new(:title => song_params[:title], :album_id => @album.id)
    if @song.save
      redirect_to album_songs_path(@album)
    else
      flash[:notice] = "Album not added!"
      render :new
    end
  end

  def show
    @user = current_user
    @album = Album.find(params[:album_id])
    @song = Song.find(params[:id])
  end

  def update
    @user = current_user
    @album = Album.find(params[:album_id])
    @song = Song.find(params[:id])
    if @song.update(song_params)
      respond_to do |format|
        format.html { redirect_to album_song_path(@album, @song) }
        format.js
      end
    else
      flash[:notice] = 'nope'
      redirect_to :edit
    end
  end

  private
  def song_params
    params.require(:song).permit(:title, :album_id, :details)
  end
  end
