feature "health points are visable" do
  scenario "health points should be displayed with the player" do
    sign_in_and_play 
    expect(page).to have_content("Jerome's HP: 60")
  end
end
