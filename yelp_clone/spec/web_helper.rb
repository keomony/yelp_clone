def sign_up
  visit('/')
  click_link('Sign up')
  fill_in('Email', with: 'test@tmail.com')
  fill_in('Password', with: 'testtest')
  fill_in('Password confirmation', with: 'testtest')
  click_button('Sign up')
end

def sign_out
  visit('/')
  click_link('Sign out')
end

def leave_review(thoughts, rating)
  click_link 'Review'
  fill_in 'Thoughts', with: thoughts
  select rating, from: 'Rating'
  click_button 'Leave Review'
end
