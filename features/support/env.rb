require File.dirname(__FILE__)+'/../../lib/thetownhall'
require 'spec'
require 'webrat'
require 'rack/test'

module Thetownhall::AppHelpers
  def app
    @app = Rack::Builder.new do
      run Thetownhall::App
    end
  end
end

World(Rack::Test::Methods)
World(Webrat::Matchers)
World(Thetownhall::AppHelpers)

Before do
  # insert before filtery things here
end
