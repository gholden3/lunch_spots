require 'rails_helper'

describe "editing a lunch spot", type: :feature, js: true do
  before :each do
    LunchSpot.create(name: "original name", description: "orig descr", rating: 9)
  end

  it "edits name and description" do
    visit lunch_spots_path
    sleep 5
    click_link 'Edit'

    fill_in('Name', with: ' new')
    fill_in('Description', with: ' new new')
    click_button 'Save'

    expect(page).to have_current_path(lunch_spots_path)
    expect(page).to have_content("original name new")
    expect(page).to have_content("orig descr new new")
  end
end