class LikesController < ApplicationController

  before_action :set_meme, only: %i[show]

  def show
  end

  def create

    @meme.likes.build(user_id: current_user.id)
    redirect_to memes_path(@meme)
  end



  private
  def set_meme
    @meme = Meme.find(params[:id])
  end
end
