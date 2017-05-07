require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :index
  end

  post '/team' do
    team = Team.new(name:params[:team][:name],motto:params[:team][:motto])
    params[:team][:members].each do |member|
      hero = Hero.new(member)
      hero.team = team
      hero.save
    end
    redirect to "/team/#{team.id}"
  end

  get '/team/:id' do

    @team = Team.find(params[:id])
    erb :team
  end

end
