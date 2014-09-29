require 'rack'

class Bums

  def init(request, response)
    @request = request
    @response = response
    @albs = {}
    File.open("top_100_albums.txt").each do |line|
      get_props = line.split(", ")
      album = get_props[0]
      year = get_props[1]
      @albs[album] = year
    end
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
    response = Rack::Response.new
    File.open("top.html", "rb") { |file| response.write(file.read) }
    Bums.new(request, response)
    File.open("bottom.html", "rb") { |file| response.write(file.read) }
    response.finish
  end

  def render_404
    [404, {"Content-Type" => "text/plain"}, ["Nothing here!"]]
  end

end

Rack::Handler::WEBrick.run Albums.new, :Port => 8080