require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


  get '/' do
    erb :"../views/super_hero"
  end
  
  post '/team' do 
    @team_name = params["team"]["name"]
    @team_motto = params["team"]["motto"]
    @team_members = params["team"]["members"]
    
    # "#{@team_name}"
    # "#{@team_motto}"
    # "#{@team_members}"

    erb :"../views/team"
  end

end
