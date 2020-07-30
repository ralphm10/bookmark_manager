feature 'adding a bookmark' do
  scenario 'user adds a new bookmark' do
    visit '/bookmarks'
    click_link('Add bookmark')
    fill_in('url', with: 'www.bbc.co.uk')
    fill_in('title', with: 'BBC')
    click_button('Add to bookmarks')
    expect(page).to have_link('BBC', href: 'www.bbc.co.uk')
  end
end
