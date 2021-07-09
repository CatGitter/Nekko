class Vaccine < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' }
    { id: 2, name: '接種済み' }
    { id: 3, name: '未接種' }
  ]
  include ActiveHash::Associations
  has_many :cats
end