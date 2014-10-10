class Album
  include DataMapper::Resource
  property :id, Serial
  property :rank, Integer
  property :name, String
  property :year, Integer
end