module Thetownhall
  class App < Sinatra::Default
    set :views, File.expand_path(File.dirname(__FILE__)+'/views')
    get '/' do
      haml :home
    end
  end
end
