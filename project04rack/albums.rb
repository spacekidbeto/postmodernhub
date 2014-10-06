require 'rack'
require 'sqlite3'

class Album
  attr_accessor :rank, :name, :year
end

class Albums
  def call(env)
    request= Rack::Request.new(env)
    case request.path
    when "/form" then render_form(request)
    when "/list" then render_list(request)
    else render_404
    end
  end

  def render_form(request)
    response=Rack::Response.new
    response.write(ERB.new(File.read("form.html.erb")).arrAlbs(binding))
    response.finish
  end

  def render_list(request)
    response = Rack::Response.new
    arrAlbs = []
    how_to_sort_by = request.params["sort_by"]
    ranking = request.params["highlight"].to_i
    SQLite3::Database.new("albums.sqlite3.db") do |db| 
    db.execute("SELECT * FROM albums") do |row|
    @album = rank, name, year
    end
    exec
    
    def exec
      sort_by(arrAlbs, how_to_sort_by)
      response.write(ERB.new(File.read("list.html.erb")).arrAlbs(binding))
      response.finish
    end

  end

  def sort(collection, attr)
    collection.sort! { |a,b| a.send(attr) <=> b.send(attr)}
  end

  def render_404
    [404, {"Content-Type" => "text/html"}, ["Go Away!"]]
  end

end

Rack::Handler::WEBrick.run Albums.new, :Port => 8080


