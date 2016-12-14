RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods

  config.before(:suite) do
    begin
      DatabaseCleaner.start
      FactoryGirl.lint
    ensure
      DatabaseCleaner.clean
    end
  end
end


# RSpec
# spec/support/factory_girl.rb
# RSpec.configure do |config|
#   config.include FactoryGirl::Syntax::Methods
# end

# RSpec.configure do |config|
#   config.include FactoryGirl::Syntax::Methods

#   config.before(:suite) do
#     FactoryGirl.find_definitions
#   end
# end
