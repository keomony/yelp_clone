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
