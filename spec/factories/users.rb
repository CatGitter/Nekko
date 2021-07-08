FactoryBot.define do
  factory :user do
    nickname {Faker::Name.name}
    email {Faker::Internet.free_email}
    password {"111aaA"}
    password_confirmation {password}
    profile {"あいうえお"}
  end
end