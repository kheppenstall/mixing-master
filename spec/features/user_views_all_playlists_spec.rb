require 'rails_helper'

RSpec.feature "User visits playlists index page" do
  scenario "and sees a link to each playlist" do
    playlist1, playlist2 = create_list(:playlist, 2)
    
    visit playlists_path

    expect(page).to have_link(playlist1.name, href=playlist_path(playlist1))
    expect(page).to have_link(playlist2.name, href=playlist_path(playlist2))
  end
end