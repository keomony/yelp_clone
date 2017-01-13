require 'rails_helper'

feature 'reviewing' do
  before do
    sign_up
  end

  scenario 'allows users to leave a review using a form' do
    create_restaurant
    visit '/restaurants'
    leave_review('so so', 3)
    expect(current_path).to eq "/restaurants/#{@kfc.id}"
    expect(page).to have_content('so so')
  end

  scenario 'displays an average rating for all reviews' do
    create_restaurant
    visit '/restaurants'
    leave_review('So so', 3)
    sign_out
    another_sign_up
    visit '/restaurants'
    leave_review('Great', 5)
    expect(page).to have_content("Average rating: 4")
  end
end
