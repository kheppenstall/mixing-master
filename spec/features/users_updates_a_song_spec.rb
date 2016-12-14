require 'rails_helper'

RSpec.feature "User visits a song's page" do 
  scenario "and updates a song" do
    artist = create(:artist)
    song = create(:song, artist: artist)
    new_title = "New Title"

    visit artist_path(artist)
    click_on song.title
    click_on "Edit"

    fill_in "song_title", with: new_title
    click_on "Update Song"

    expect(page).to have_content(new_title)
  end
end