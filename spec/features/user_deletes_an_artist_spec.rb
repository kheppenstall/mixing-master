require 'rails_helper'

RSpec.feature "User deletes an artist" do
  scenario "artist is removed from database" do
    
    artist = create(:artist)
    visit artist_path(artist)
    click_on "Delete"

    expect(page).to_not have_content(artist.name)

  end
end