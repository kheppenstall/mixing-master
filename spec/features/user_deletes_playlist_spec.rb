require 'rails_helper'

RSpec.feature "User deletes a playlist" do
  scenario "and is redirected to playlists page" do
    playlist1 = create(:playlist)
    
    visit playlists_path
    click_on playlist1.name
    click_on "Delete"

    expect(page).to_not have_content(playlist1.name)
  end
end