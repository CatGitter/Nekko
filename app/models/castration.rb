class Castration < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' }
    { id: 2, name: '去勢している' }
    { id: 3, name: '去勢していない' }
  ]
  include ActiveHash::Associations
  has_many :cats
end