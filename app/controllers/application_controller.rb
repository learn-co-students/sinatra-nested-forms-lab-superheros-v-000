require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/heros' do
    @team = Team.new(params[:team])
    for i in 1..3 do
      @team.heros << Hero.new(params["member#{i}_name"], params["member#{i}_power"], params["member#{i}_bio"])
    end
    erb :team
  end

end
