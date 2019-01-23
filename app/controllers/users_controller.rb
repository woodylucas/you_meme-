class UsersController < ApplicationController

  before_action :set_user, only: %i[show]

	def show
	end


  def set_user
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:username, :encrypted_password, :bio, :email)
  end
end
