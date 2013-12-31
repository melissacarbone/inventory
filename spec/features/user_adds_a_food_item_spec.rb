require 'spec_helper'

feature 'user adds food item' do
  it 'creates food item' do
    visit '/foods/new'

    fill_in 'Title', with: 'Dumpling'
    fill_in 'Description', with: 'Yummy'
    fill_in 'Quantity', with: 10

    click_on 'Save Food'
    save_and_open_page
    expect(page).to have_content('Food was successfully created')
  end
end

