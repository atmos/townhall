require 'spec'
require 'webrat'
require 'rack/test'
require File.dirname(__FILE__)+'/../../lib/thetownhall'
module Thetownhall::AppHelpers
  begin
    gem 'safariwatir', '~>0.3.3'
    require 'safariwatir'
    def browser
      @browser ||= Watir::Safari.new
    end
  rescue LoadError => e
  end

  def app_host
    'http://localhost:9393/migration'
  end

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
