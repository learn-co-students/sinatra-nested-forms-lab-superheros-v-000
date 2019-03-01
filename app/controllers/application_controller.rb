require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end
    
    post '/teams' do
      binding.pry
      @team= params[:team]
      @hero= params[:team][:hero]
      erb :teams
    end
    
end




# {"team"=>
#   {"name"=>"Team Ruby",
#   "motto"=>"We love Ruby!",
#   "hero"=>
#     [{"name"=>"Amanda", "power"=>"Ruby", "bio"=>"I love Ruby!"},
#     {"name"=>"Arel", "power"=>"JavaScript", "bio"=>"I love JavaScript!"},
#     {"name"=>"Katie", "power"=>"Sinatra", "bio"=>"I love Sinatra!"}]}}



