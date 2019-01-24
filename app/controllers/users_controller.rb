class UsersController < ApplicationController

  before_action :set_user, only: %i[show, edit]

	def show
	end

	def edit 
	end


  def set_user
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :bio, :user_id, :profile_pic)
  end
end
