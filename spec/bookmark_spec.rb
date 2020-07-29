require 'bookmark'

describe Bookmark do

  describe '.all' do
    it 'responds to all method' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include "https://soundcloud.com/"
      expect(bookmarks).to include "http://www.google.com"
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      Bookmark.create('www.facebook.com')
      expect(Bookmark.all).to include "www.facebook.com"
    end
  end

end
