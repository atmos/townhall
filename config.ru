require File.dirname(__FILE__)+'/lib/thetownhall'

use EY::Solo::Rack::Redirect
use Rack::Static, :urls => ["/stylesheets", "/images", "/javascripts"], :root => "public"
run Thetownhall::App
