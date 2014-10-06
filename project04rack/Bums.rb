require ‘sinatra’
require ‘data_mapper’
require_relative ‘album’
DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/albums.sqlite3.db")
set :port, 8080
get “/” do
  “Sinatra is working!”
end

class Album
  include DataMapper::Resource
  property :id, Serial
  property :rank, Integer
  property :title, String
  property :year, Integer
end

@albums = Album.al