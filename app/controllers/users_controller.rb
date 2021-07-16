class UsersController < ApplicationController
  before_action :in_user, only: [:show]

  def show
    @cats = @user.cats
  end



  private

  def user_params
    params.require(:user).permit(:profile)
  end

  def in_user
    @user = User.find(params[:id])
  end
end
