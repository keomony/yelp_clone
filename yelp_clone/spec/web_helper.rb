def sign_up
  visit('/')
  click_link('Sign up')
  fill_in('Email', with: 'test@tmail.com')
  fill_in('Password', with: 'testtest')
  fill_in('Password confirmation', with: 'testtest')
  click_button('Sign up')
end

def another_sign_up
  visit('/')
  click_link('Sign up')
  fill_in('Email', with: 'tk@gma.com')
  fill_in('Password', with: 'tttttt')
  fill_in('Password confirmation', with: 'tttttt')
  click_button('Sign up')
end

def create_restaurant
  user = User.create(email: 'test@test.com')
  @kfc = user.restaurants.new(name: 'KFC', description: 'Crunchy chicken', user_id: user.id)
  @kfc.save
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
