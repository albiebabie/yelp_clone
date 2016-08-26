def sign_in
  visit '/'
  click_link 'Sign in'
  fill_in 'Email', with: 'test@test.co.uk'
  fill_in 'Password', with: '123456'
  click_button 'Log in'
end

def sign_in_2
  visit '/'
  click_link 'Sign in'
  fill_in 'Email', with: 'joe@bloggs.co.uk'
  fill_in 'Password', with: 'password123'
  click_button 'Log in'
end


def leave_review(thoughts, rating)
  visit '/'
  click_link 'Review KFC'
  fill_in 'Thoughts', with: thoughts
  select rating, from: 'Rating'
  click_button 'Leave Review'
end
