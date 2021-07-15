class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @cats = @user.cats
  end
end
