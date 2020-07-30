feature 'deleting a bookmark' do
  scenario 'clicking delete bookmark button removes the bookmark' do
    visit '/bookmarks'
    click_link('Add bookmark')
    fill_in('url', with: 'www.bbc.co.uk')
    fill_in('title', with: 'BBC')
    click_button('Add to bookmarks')
    click_button('delete bookmark')
    expect(current_path).to eq '/bookmarks'
    expect(page).to_not have_link('BBC', href: 'www.bbc.co.uk')
  end
end
