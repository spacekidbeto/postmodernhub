require 'rack'

class Bums
  
  attr_accessor :name, :year, :rank

  def init()
    @name = name
    @year = year
    @rank = rank
  end

end

class Albums

  def call(env)
    request = Rack::Request.new(env)
    case request.path
      when "/form" then render_form(request)
      when "/list" then render_list(request)
      else render_404
    end
  end

  def render_form(request)
    response = Rack::Response.new
    File.open("form_top.html", "rb") { |form| response.write(form.read) }
    (1..100).each { |i| response.write("<option value=\"#{i}\">#{i}</option>\n")}
    File.open("form_bottom.html", "rb") { |form| response.write(form.read) }
    response.finish
  end

  def render_list(request)
    sorting_ = request.params["sort_by"]
    ranking = request.params["highlight"].to_i
    response = Rack::Response.new
    album_obj = []
    response.write("<!doctype html>\n <html>\n <head>\n <style type=\"text/css\"> .highlighted {background: yellow;}</style> </head>\n <body>\n");
    response.write("<table>\n <tr>\n <th>Rank #</th>\n <th>Album Name</th>\n <th>Year Released</th>\n </tr>\n")
    File.open("top_100_albums.txt","r").each do |collect|
        temp = collect.split(", ")
        b = Bums.new
        b.name = temp[0]
        b.year = temp[1]
        album_obj.push(b)
    end

    sort_by(album_obj, sorting_)
    album_obj.each_with_index do |x, i|
      if(x.rank==ranking) then response.write( "<tr class=\"highlighted\">\n <td>\ #{x.rank}\ </td> <td> \ #{x.name}\ </td>\n <td>\ #{x.year}\ </td>\n </tr>\n")
      else response.write(" <tr>\n <td>\ #{x.rank}\ </td> <td> \ #{x.name}\ </td>\n <td>\ #{x.year}\ </td>\n </tr>\n")
      end
    end
    response.write("</table>\n </body>\n</html>\n")
    response.finish
  end

  def sort_by(collection, attr)
    collection.sort! { |a,b| a.send(attr) <=> b.send(attr)}
  end

  def render_404
    [404, {"Content-Type" => "text/html"}, ["Oops Nothing here!"]]
  end

end

Rack::Handler::WEBrick.run Albums.new, :Port => 8080