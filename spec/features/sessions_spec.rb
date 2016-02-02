require 'rails_helper'

RSpec.feature "Sessions", type: :feature do
  scenario 'Flash error on unsuccessful login' do
    visit new_session_path
    fill_in 'Username', with: 'nothing'
    fill_in 'Password', with: 'nothing'
    click_button 'Save Session'
    expect(page).to have_content('Wrong username / password')
    visit root_path
    expect(page).to_not have_content('Wrong username / password')
  end
end
