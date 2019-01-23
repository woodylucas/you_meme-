class MemesController < ApplicationController

  before_action :set_meme, only: %i[show edit update delete]

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
    redirect_to meme_path(@meme)
  end


  def edit
  end


  def update
    @meme.update(meme_params)
    redirect_to meme_path(@meme)
  end


  def delete
    @meme.destroy
    redirect_to meme_path(@meme)
  end

  def set_meme
    @meme = Meme.find(params[:id])
  end

  private
  def meme_params
    params.require(:meme).permit(:title, :caption, :user_id, :cover_photo)
  end
end
