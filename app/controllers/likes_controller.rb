class LikesController < ApplicationController

  before_action :set_meme, only: %i[show]

  def show
  end

  def create
    byebug
    @meme.likes.build(user_id: current_user.id)
  end



  private
  def set_meme
    @meme = Meme.find(params[:id])
  end
end
