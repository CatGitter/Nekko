class CatsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update ,:destroy]
  before_action :in_cat, only: [:show, :edit, :update, :destroy]
  before_action :move_index, only: [:edit, :update, :destroy]
  

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
  end

  def edit
  end

  def update
    if @cat.update(cat_params)
      redirect_to cat_path
    else
      render :edit
    end
  end

  def destroy
    if @cat.destroy
      redirect_to root_path
    end
  end

  private

  def cat_params
    params.require(:cat).permit(:image, :name, :age, :breed, :prefecture_id, :sex_id, :vaccine_id, :castration_id, :personality, :health, :adopt_method, :remarks).merge(user_id: current_user.id)
  end

  def in_cat
    @cat = Cat.find(params[:id])
  end

  def move_index
    unless current_user.id = @cat.user_id
      redirect_to action: :index
    end
  end
end
