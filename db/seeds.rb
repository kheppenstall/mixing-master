require 'factory_girl_rails'
require './spec/support/factories'

30.times do |n|
  songs = FactoryGirl.create_list(:song, 10)
  playlist = FactoryGirl.create(:playlist)
  playlist.songs << songs
end