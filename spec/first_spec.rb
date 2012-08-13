require 'spec_helper'

describe 'user creation' do
  it 'allows a user to sign into rankforme with email and password' do
    visits 'user/sign_in'
    page.should have_button 'Sign in'
  end
end
