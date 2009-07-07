require 'rubygems'
require File.dirname(__FILE__)+'/lib/thetownhall'

class ThetownhallSite < Thetownhall::App
  set :public,      File.expand_path(File.dirname(__FILE__), "public")
  set :environment, :production
end

run ThetownhallSite
