class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :cats
         has_many :user_rooms
         has_many :rooms, through: :room_users
         has_many :chats

         validates :password, on: :create, format: { with:/\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?\d)[a-zA-Z\d]+\z/ }
  with_options presence: true do
         validates :nickname
         validates :profile
  end

  def remember_me
    true
  end

  def update_without_current_password(params, *options)
    params.delete(:current_password)
    if params[:password].blank? && params[:password_confrmation].blank?
      params.delete(:password)
      params.delete(:password_confrmation)
    end

  result = update_attributes(params, *options)
  clean_up_passwords
  result
  end
end
