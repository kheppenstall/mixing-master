require 'rails_helper'

RSpec.feature "User creates a playlist" do
  scenario "and sees links to songs and playlist title" do

    song1, song2, song3, = create_list(:song, 3)
    playlist_name = "My Jams"

    visit new_playlist_path

    fill_in "playlist_name", with: playlist_name

    check(song1.title)
    check(song2.title)
    
    
    click_on "Create Playlist"

    expect(page).to have_link song1.title, href: song_path(song1)
    expect(page).to have_link song2.title, href: song_path(song2)  
  end
end