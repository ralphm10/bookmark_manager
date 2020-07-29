feature 'adding a bookmark' do
  scenario 'user adds a new bookmark' do
    visit '/bookmarks'
    click_link('Add bookmark')
    fill_in('url', with: 'www.bbc.co.uk')
    click_button('Add url')
    expect(page).to have_content 'www.bbc.co.uk'
  end
end
