feature 'viewing bookmarks' do
  scenario 'user navigates to bookmarks page and sees a list' do
    Bookmark.create(url: 'https://soundcloud.com/', title: 'Soundcloud')
    Bookmark.create(url: 'http://www.google.com', title: 'Google')
    visit '/bookmarks'
    expect(page).to have_content "Soundcloud"
    expect(page).to have_content "Google"
  end
end
