require 'rails_helper'

feature 'reviewing' do
  before do
    Restaurant.create name: 'KFC'
    User.create(email: "test@test.co.uk", password: "123456")
    User.create(email: "joe@bloggs.co.uk", password: "password123")
  end

  scenario 'allows users to leave a review using a form' do
    sign_in
    leave_review('so so', 3)
    expect(current_path).to eq '/restaurants'
    expect(page).to have_content('so so')
  end

  scenario 'displays an average rating for all reviews' do
    sign_in
    leave_review('so so', 3)
    click_link 'Sign out'
    sign_in_2
    leave_review('Great', 5)
    expect(page).to have_content('Average rating: 4')
  end
end
