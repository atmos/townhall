require File.dirname(__FILE__)+'/lib/thetownhall'

use Rack::Static, :urls => ["/stylesheets", "/images", "/javascripts"], :root => "public"
run Thetownhall::App
