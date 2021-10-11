# frozen_string_literal: true

feature BookmarkController do
  scenario 'see index page' do
    visit '/'
    expect(page).to have_content 'Welcome to Bookmark Manager'
  end

  scenario 'view a bookmark' do
    visit '/bookmarks'
    expect(page).to have_content 'www.theguardian.com'
  end
end
