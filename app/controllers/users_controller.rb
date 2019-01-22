class UsersController < ApplicationController

  before_action :set_user, only: %i[show]

<<<<<<< HEAD
  

=======
	def show
	end
>>>>>>> 7f8f95251c2d34e8cbacb84428b491d1e7cedc01


  def set_user
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :bio, :user_id)
  end
end
