feature "User can enter his / her name and birthday and see them on screen" do
  scenario "User enter's 'Marek'" do
    visit '/'
    fill_in "name", with: "Marek"
    fill_in "birth_day", with: 19
    select "January", :from => "birth_month"
    click_button "Go!"
    expect(page).to have_content "Your name is Marek"
    expect(page).to have_content "Your birthday is January 19"
  end
end
