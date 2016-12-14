require 'rails_helper'

RSpec.feature "User visits songs index" do
  scenario "and sees all songs" do
    create(:song, title: "One Love")
    create(:song, title: "Other Love")
    create(:song, title: "A Love")

    visit songs_path

    expect(page).to have_content("One Love")
    expect(page).to have_content("Other Love")
    expect(page).to have_content("A Love")
    expect("A Love").to appear_before "One Love"
    expect("One Love").to appear_before "Other Love"
  end
end