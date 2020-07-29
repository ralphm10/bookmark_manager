require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  get '/' do
    'Hello, world'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb(:bookmarks)
  end

  get '/bookmarks/new' do
    erb(:add_bookmark)
  end

  post '/bookmarks' do
    Bookmark.create(url: params[:url])

    # connection = PG.connect(dbname: 'bookmark_manager')
    # connection.exec("INSERT INTO bookmarks (url) VALUES ('#{url}');")
    redirect '/bookmarks'
  end


# start the server if ruby file executed directly
  run! if app_file == $0
end
