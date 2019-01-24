class UsersController < ApplicationController
  skip_before_action :authorized, only: %i[new create]
  before_action :set_user, only: %i[show]

  def new
    @user = User.new
  end

	def show
	end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
      redirect_to user_path
  end

  def set_user
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:username, :bio, :password)
  end
end
