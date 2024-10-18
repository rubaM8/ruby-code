require 'rack'
require 'quiz'
require 'rack/session/cookie'

use Rack::Reloader

app = Rack::Builder.new do
  use Rack::Static, urls: ["/stylesheets", "/images", "/js"], root: "public"
  use Rack::Session::Cookie, key: 'rack.session', path: '/', secret: 'b2d2b05a9b5c5c3e36efbc0c93c3f6c4af0e54be55b1f4cde9b0f7e0d9d2a8340'
  run Quiz
end

run app

