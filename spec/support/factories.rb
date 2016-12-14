FactoryGirl.define do

  factory :artist do
    name       "Bob Marley"
    image_path "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"
  end

  factory :song do
    title "One Love"
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