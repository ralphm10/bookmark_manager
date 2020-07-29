feature 'viewing bookmarks' do
  scenario 'user navigates to bookmarks page and sees a list' do
    Bookmark.create('https://soundcloud.com/')
    Bookmark.create('http://www.google.com')
    bookmarks = Bookmark.all
    visit '/bookmarks'
    expect(page).to have_content "https://soundcloud.com/"
    expect(page).to have_content "http://www.google.com"
  end
end
