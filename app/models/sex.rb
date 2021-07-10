class Sex < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '雄' },
    { id: 3, name: '雌' },
  ]
  include ActiveHash::Associations
  has_many :cats
end