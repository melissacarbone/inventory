require 'spec_helper'

feature 'user adds food item' do
  it 'creates food item with valid attributes' do
    visit 'foods/new'

    fill_in 'Title', with: 'Dumpling'
    fill_in 'Description', with: 'Yummy'
    fill_in 'Quantity', with: 10

    click_on 'Save Food'
    expect(page).to have_content('Food was successfully created')
  end

  it 'creates food item with invalid attributes' do
    visit 'foods/new'

    click_on 'Save Food'

    expect(page).to have_content('Title can\'t be blank')
    expect(page).to have_content('Description can\'t be blank')
    expect(page).to have_content('Quantity can\'t be blank')



  end
end

