require 'spec_helper.rb'

def sign_in_and_play
  visit("/")
  fill_in('player_1', with: 'CJ')
  fill_in('player_2', with: 'Jerome')
  click_button('submit')
end
