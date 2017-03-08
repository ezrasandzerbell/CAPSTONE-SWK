class AlbumsController < ApplicationController

  def index
    @user = current_user
  end

  def new
    @user = current_user
    @album = Album.new
  end

  def create
    @user = current_user
    @album = Album.new(:title => album_params[:title], :user_id => @user.id)
    if @album.save
      redirect_to album_songs_path(@album)
    else
      flash[:notice] = "Album not added!"
      render :new
    end
  end

  def show
    @user = User.find(params[:user_id])
    @album = Album.find(params[:id])
  end

  def update
    @user = current_user
    @album = Album.find(params[:album_id])
    if @album.update(album_params)
      flash[:notice] = "You updated your album"
    else
      flash[:notice] = 'nope'
      redirect_to :edit
    end
  end

private
  def album_params
    params.require(:album).permit(:title, :user_id, :details)
  end
end