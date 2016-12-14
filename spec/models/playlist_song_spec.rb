require 'rails_helper'

RSpec.describe PlaylistSong, type: :model do
  context "associations" do
    it {should belong_to(:song)}
    it {should belong_to(:playlist)}
  end
end
