require 'rails_helper'

RSpec.feature "User edits an artist" do
  scenario "user changes data" do
    
    artist = create(:artist)
    visit edit_artist_path(artist)

    fill_in "artist_name", with: "Dave"
    click_on "Update"

    expect(page).to have_content "Dave"
  end

  context "user enters invalid data" do
    scenario "and an error is given" do
    
    end
  end
end