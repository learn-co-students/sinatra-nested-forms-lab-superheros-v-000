require 'sinatra/base'

class App < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :index
  end

  post '/teams' do
    @team = Team.new(params[:team])
    @team.members = params[:team][:members].collect { |member| Superhero.new(member) } 

    erb :team
  end


end
