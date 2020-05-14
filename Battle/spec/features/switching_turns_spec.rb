feature "the current players name is displayer" do
  scenario "the current turn should display with the correct name" do
    sign_in_and_play 
    expect(page).to have_content("Current player: CJ")
  end

  scenario "game should have a method to tell us whos turn it is" do
    sign_in_and_play
    expect($game.current_turn).to eq "CJ"
  end

  scenario "should show Jeroms turn after the attack" do
    sign_in_and_play
    click_link("Attack")
    click_link("Okay")
    expect(page).to have_content("Current player: Jerome")
  end
end