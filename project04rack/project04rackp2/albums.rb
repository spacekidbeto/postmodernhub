require ‘sinatra’
require ‘data_mapper’
require_relative ‘album’

NUMBER_OF_ALBUMS = 100
DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/albums.sqlite3.db")

set :port, 8080

get “/form” do
  erb :form
end

post “/list” do
  @sort_order = params[:sort_by]
  @highlight = params[:ranks].to_i
  @albums = Album.all(:order => @sort_order.to_sym)
  erb :list
end