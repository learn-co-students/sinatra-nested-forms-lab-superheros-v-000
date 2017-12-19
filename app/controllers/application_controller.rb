require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
      erb :super_hero  #:'../views/super_hero' 
    end 
    
    post '/teams' do 
      #binding.pry
      @team = params 
      
      
      erb :team   #:'../views/team'      
    end 
end
