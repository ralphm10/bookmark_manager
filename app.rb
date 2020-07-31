require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  enable :method_override

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

  get '/bookmarks/:id/edit' do
    @bookmark_to_edit = Bookmark.find(id: params[:id])
    erb(:edit_bookmark)
  end

  patch '/bookmarks/:id' do
    'update bookmark method'
  end

  post '/bookmarks' do
    Bookmark.create(url: params[:url], title: params[:title])
    redirect '/bookmarks'
  end

  delete '/bookmarks/:id' do
    Bookmark.delete(id: params[:id])
    redirect '/bookmarks'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
