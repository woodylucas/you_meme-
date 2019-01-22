class MemesController < ApplicationController

  before_action :set_meme, only: %i[show]

  def index
    @memes = Meme.all
  end


  def set_meme
    @meme = Meme.find(params[:id])
  end

  private
  def meme_params
    params.require(:meme).permit(:title, :caption)
  end
end
