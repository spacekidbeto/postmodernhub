require 'rack'

class HelloWorld
  def call(env)
  	file = File.open("albums.html", "r")
	contents=file.read 
    [200, {"Content-Type" => "text/html"}, ["Hello from Rack!"]]
  end
end

Rack::Handler::WEBrick.run HelloWorld.new, :Port => 8080