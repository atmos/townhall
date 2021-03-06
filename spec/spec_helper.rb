$TESTING=true
$:.push File.join(File.dirname(__FILE__), '..', 'lib')
require 'rubygems'
require 'randexp'
require 'thetownhall'
#require 'dm-core'
require 'rack/test'
require 'webrat/sinatra'
#require 'dm-sweatshop'
require 'fakeweb'
require 'pp'

FakeWeb.allow_net_connect = false

#require File.dirname(__FILE__)+'/fixtures'
#DataMapper.setup(:default, 'sqlite3::memory:')

class Net::HTTPResponse 
  def body=(content) 
    @body = content 
    @read = true 
  end 
end

Spec::Runner.configure do |config|
  config.include(Rack::Test::Methods)
  config.include(Webrat::Methods)
  config.include(Webrat::Matchers)

  config.before(:each) do
    #DataMapper.auto_migrate!
    FakeWeb.clean_registry
  end

  def app
    @app = Rack::Builder.new do
      run Thetownhall::App
    end
  end
end
