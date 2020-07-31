feature 'find a bookmark' do
  scenario 'search and be shown one bookmark' do
    visit '/bookmarks'
    click_link('Add bookmark')
    fill_in('url', with: 'www.bbc.co.uk')
    fill_in('title', with: 'BBC')
    click_button('Add to bookmarks')
    click_button('edit bookmark')
    expect(page).to have_content 'Enter new URL'
  end
end
