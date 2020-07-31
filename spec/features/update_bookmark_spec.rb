feature 'update a bookmark' do
  scenario 'find a bookmark and then edit it' do
    visit '/bookmarks'
    click_link('Add bookmark')
    fill_in('url', with: 'www.bbc.co.uk')
    fill_in('title', with: 'BBC')
    click_button('Add to bookmarks')
    click_button('edit bookmark')
    fill_in('url', with: 'www.bbc.com')
    fill_in('title', with: 'The BBC')
    click_button('Edit bookmark')
    expect(page).to have_content 'The BBC'
  end
end
