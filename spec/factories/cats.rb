FactoryBot.define do
  factory :cat do
    name {Faker::Creature::Cat.name}
    age {"2歳"}
    breed {Faker::Creature::Cat.breed}
    prefecture_id { 2 }
    sex_id { 2 }
    vaccine_id { 2 }
    castration_id{ 2 }
    personality {"性格"}
    health {"良好"}
    adopt_method {"引き渡し"}
    remarks {"備考"}
    association :user

    after(:build) do |cat|
      cat.image.attach(io: File.open('public/images/test1_image.png'), filename: 'test1.image_png')
    end
  end
end
