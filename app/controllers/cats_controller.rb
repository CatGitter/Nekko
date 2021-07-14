class CatsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @cats = Cat.all.order("created_at DESC")
  end

  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.new(cat_params)
    if @cat.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @cat = Cat.find(params[:id])
  end

  private

  def cat_params
    params.require(:cat).permit(:image, :name, :age, :breed, :prefecture_id, :sex_id, :vaccine_id, :castration_id, :personality, :health, :adopt_method, :remarks).merge(user_id: current_user.id)
  end
end
