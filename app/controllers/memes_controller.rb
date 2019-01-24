class MemesController < ApplicationController

  before_action :set_meme, only: %i[show edit update destroy]

  def index
    @memes = Meme.all
  end

  def new
    @meme = Meme.new
  end


	def show
	end

  def create
    @meme = Meme.create(meme_params)
    redirect_to user_path(@meme.user)
  end



  def edit
  end


  def update
    @meme.update(meme_params)
    redirect_to user_path(@meme.user)
  end


  def destroy
    @meme.destroy
    redirect_to user_path(@meme.user)
  end


  def set_meme
    @meme = Meme.find(params[:id])
  end

  private
  def meme_params
    params.require(:meme).permit(:title, :caption, :user_id, :cover_photo)
  end
end
