require 'bookmark'
require 'database_helpers'

describe Bookmark do

  describe '.all' do
    it 'responds to all method' do
      bookmark = Bookmark.create(url: 'https://soundcloud.com', title: 'Soundcloud')
      Bookmark.create(url: 'http://www.google.com', title: 'Google')

      bookmarks = Bookmark.all

      expect(bookmarks.length).to eq 2
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq "Soundcloud"
      expect(bookmarks.first.url).to eq "https://soundcloud.com"
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      bookmark = Bookmark.create(url: 'www.facebook.com', title: 'Facebook')
      persisted_data = persisted_data(id: bookmark.id)

      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data['id']
      expect(bookmark.title).to eq 'Facebook'
      expect(bookmark.url).to eq 'www.facebook.com'
    end
  end

  describe '.delete' do
    it 'deletes a bookmark' do
      bookmark = Bookmark.create(url: 'https://soundcloud.com', title: 'Soundcloud')
      Bookmark.delete(id: bookmark.id)
      bookmarks = Bookmark.all
      expect(bookmarks.length).to eq 0
    end
  end

  describe '.find' do
    it 'finds and displays a bookmark' do
      bookmark = Bookmark.create(url: 'https://soundcloud.com', title: 'Soundcloud')
      connection = PG.connect(dbname: 'bookmark_manager_test')
      result = connection.query("SELECT * FROM bookmarks WHERE title = '#{bookmark.title}'")
      result
    end
  end

end
