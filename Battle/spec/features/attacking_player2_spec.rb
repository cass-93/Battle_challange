feature "Attacking" do
  scenario "Attack Player 2" do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'CJ attacked Jerome'
  end
end
