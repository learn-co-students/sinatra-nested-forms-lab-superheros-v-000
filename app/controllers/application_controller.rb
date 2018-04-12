require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

 get '/' do
   erb :index
 end

 get '/' do
    erb :super_hero
 end

end
