require 'rails_helper'

RSpec.feature "User views all artists" do
  scenario "they see a list of all artists" do
    
    artist = create(:artist)
    visit artists_path


    expect(page).to have_content artist.name 
  end

  context "clicks link for an individual artist" do
    scenario "and sees information on that artists" do
    
      artist = create(:artist)
      visit artists_path

      click_on artist.name

      expect(page).to have_content artist.name 
      expect(page).to have_css "img[src=\"#{artist.image_path}\"]"
    end
  end
end