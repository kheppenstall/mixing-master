require 'rails_helper'

RSpec.feature "User deletes a song" do
  context "from show page" do
    scenario "and is redirected to artists page" do
      artist = create(:artist)
      song = create(:song, artist: artist)

      visit artist_path(artist)
      click_on song.title
      click_on "Delete"

      expect(current_path).to eq(artist_path(artist))
      expect(page).to_not have_content(song.title) 
    end
  end

  # context "from songs page" do
  #   scenario "and is redirected to songs page" do
  #     artist = create(:artist)
  #     song = create(:song, artist: artist)

  #     visit songs_path
  #     click_on song.title
  #     click_on "Delete"

  #     expect(current_path).to eq(songs_path)
  #     expect(page).to_not have_content(song.title) 
  #   end
  # end
end