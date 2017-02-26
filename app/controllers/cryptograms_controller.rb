class CryptogramsController < ApplicationController

  def new
    @user = current_user
    @song = Song.find(params[:song_id])
    @cryptogram = Cryptogram.new()
  end

  def create
    @user = current_user
    @song = Song.find(params[:song_id])
    @cryptogram = Cryptogram.new(:word => crypto_params[:word], :song_id => @song.id)
    @cryptogram.note_array = @cryptogram.musicEncryption
    binding.pry
    if @cryptogram.save
      flash[:notice] = "Cryptogram added!"
      redirect_to user_song_path(@user, @song)
    else
      flash[:notice] = "Song not added!"
      render :new
    end
  end

  def show
    @user = current_user
    @song = Song.find(params[:song_id])
    @cryptogram = Cryptogram.find(params[:id])
  end

  def edit
    @user = current_user
    @song = Song.find(params[:song_id])
    @cryptogram = Cryptogram.find(params[:id])
  end

  def update
    @user = current_user
    @song = Song.find(params[:song_id])
    @cryptogram = Cryptogram.find(params[:id])
    if crypto_params[:word] != "" && @cryptogram.update(crypto_params)
      flash[:notice] = "You updated your cryptogram"
    else
      flash[:notice] = 'nope'
      redirect_to :edit
    end
  end

  private
    def crypto_params
      params.require(:cryptogram).permit(:word, :song_id, :user_id)
    end
  end
