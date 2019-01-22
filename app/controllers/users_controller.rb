class UsersController < ApplicationController

  before_action :set_user, only: %i[show]



  def set_user
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :bio)
  end
end
