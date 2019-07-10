require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
      erb :index
      # Actually, I think I need to link to super_hero.erb here and delete the index file.
    end
end
