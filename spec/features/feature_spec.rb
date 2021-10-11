feature BookmarkController do
  scenario "see index page" do
    visit "/"
    expect(page).to have_content "Welcome to Bookmark Manager"
  end
end 