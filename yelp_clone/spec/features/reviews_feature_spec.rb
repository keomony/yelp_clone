require 'rails_helper'

feature 'reviewing' do
  before do
    sign_up
  end

  scenario 'allows users to leave a review using a form' do
    user = User.create(email: 'test@test.com')
    kfc = user.restaurants.new(name: 'KFC', description: 'Crunchy chicken', user_id: user.id)
    kfc.save
    visit '/restaurants'
    leave_review('so so', 3)
    expect(current_path).to eq "/restaurants/#{kfc.id}"
    expect(page).to have_content('so so')
  end
end
