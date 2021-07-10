class Cat < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  belongs_to :sex
  belongs_to :vaccine
  belongs_to :castration

  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :name
    validates :age
    validates :breed
    validates :personality
    validates :health
    validates :adopt_method
  end

  with_options numericality: { other_than: 1 , message: "can't be blank"} do
    validates :prefecture_id
    validates :sex_id
    validates :vaccine_id
    validates :castration_id
  end
end
