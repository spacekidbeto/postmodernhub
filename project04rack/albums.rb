require 'rack'

class Albums
	def call(env)
		request = Rack::request.new(env)
		case request.path
		when "/form" then render_form(request)
		when "/list" then render_list(request)
		else render_404
	end	

	def render_form(request)
		response = Rack::Response.new
		File.open("form_top.html", "rb") { |form| response.write(form.read) }
		(1..100).each { |i| response.write("<option value=\"#{i+1}\">#{i+1}</option>\n")}
		File.open("form_bottom.html", "rb") { |form| response.write(form.read) }
		response.finish
	end

	def render_list(request)
		response = Rack::Response.new
		File.open("top_100_albums.txt", "rb") { |file| response.write(file.read) }
		response.finish
	end
	
	def render_404
		[404, {"Content-Type" => "text/plain"}, ["Nothing Here! -.-"]]
	end	
end

Rack::Handler::WEBrick.run Albums.new, :Port => 8080