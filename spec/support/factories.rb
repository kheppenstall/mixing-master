FactoryGirl.define do

  factory :artist do
    name       { Faker::Superhero.name }
    image_path { Faker::Avatar.image }
  end

  factory :song do
    title { Faker::Book.title }
    artist Artist.new
  end

  factory :playlist do
    name { Faker::Book.genre }
  end
end