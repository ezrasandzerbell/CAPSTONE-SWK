class CryptogramsController < ApplicationController
  def new
    @user = current_user
    @riff = Riff.find(params[:riff_id])
    @cryptogram = Cryptogram.new()
  end

  def create
    @user = current_user
    @riff = Riff.find(params[:riff_id])
    @cryptogram = Cryptogram.new(:word => crypto_params[:word], :riff_id => @riff.id)
    @word = @cryptogram.word
    @cryptogram.definition = @cryptogram.get_definition
    @cryptogram.synonyms = @cryptogram.get_synonym
    @cryptogram.note_array = @cryptogram.musicEncryption
    if @cryptogram.save
      flash[:notice] = "Cryptogram added!"
      redirect_to user_riff_path(@user, @riff)
    else
      flash[:notice] = "Riff not added!"
      render :new
    end
  end

  def show
    @user = current_user
    @riff = Riff.find(params[:riff_id])
    @cryptogram = Cryptogram.find(params[:id])
  end

  def edit
    @user = current_user
    @riff = Riff.find(params[:riff_id])
    @cryptogram = Cryptogram.find(params[:id])
  end

  def update
    @user = current_user
    @riff = Riff.find(params[:riff_id])
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
      params.require(:cryptogram).permit(:word, :riff_id, :user_id)
    end
  end
