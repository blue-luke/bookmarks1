# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

class BookmarkController < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    Bookmark.new('www.theguardian.com')
    Bookmark.new('www.thetimes.co.uk')
    @bookmark = Bookmark # this should change soon so we don't create a new Bookmark every time we visit /bookmarks
    erb :bookmarks
  end

  run! if app_file == $PROGRAM_NAME
end
