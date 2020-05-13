feature "player enter thier name" do
  scenario "fill in form then submit name" do
    visit("/")
    fill_in('player_1', with: 'CJ')
    fill_in('player_2', with: 'Jerome')
    click_button('submit')
    expect(page).to have_content 'CJ vs Jerome'
  end
end
