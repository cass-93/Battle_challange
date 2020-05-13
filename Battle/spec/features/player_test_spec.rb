feature "player enter thier name" do
  scenario "fill in form then submit name" do
    sign_in_and_play
    expect(page).to have_content 'CJ vs Jerome'
  end
end
