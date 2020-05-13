feature "health points are visable" do
  scenario "health points should be displayed with the player" do
    visit("/")
    fill_in('player_1', with: 'CJ')
    fill_in('player_2', with: 'Jerome')
    click_button('submit')
    expect(page).to have_content("Jerome's HP: 60")
  end
end