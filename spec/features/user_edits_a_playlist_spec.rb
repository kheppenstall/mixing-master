require 'rails_helper'

RSpec.feature "User edits a play list" do
  scenario "and updates name" do
    
    playlist = create(:playlist)
    songs = create_list(:song, 10)
    extra_song = create(:song)

    playlist.songs << songs

    new_name = "New Playlist Name"

    visit playlist_path(playlist)
    click_on "Edit"

    save_and_open_page
    
    fill_in "playlist_name", with: new_name
    click_on "Update Playlist"

    expect(page).to have_content(new_name)

  end
end
