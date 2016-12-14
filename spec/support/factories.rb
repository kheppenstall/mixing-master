FactoryGirl.define do

  factory :artist do
    name       Faker::Superhero.name
    image_path Faker::Avatar.image
  end

  factory :song do
    title Faker::Book.title
    artist Artist.new
  end
end

# factory :article do
#   body 'password'

#   factory :article_with_comment do
#     after(:create) do |article|
#       create(:comment, article: article)
#     end
#   end
# end

# factory :comment do
#   body 'Great article!'
# end