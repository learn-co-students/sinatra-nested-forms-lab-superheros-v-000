require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    post '/teams' do
      @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
      team_members = params[:team][:members]
      @super_heroes = team_members.collect {|member|
        SuperHero.new({name: member[:name], power: member[:power], bio: member[:bio]})
      }
      erb :team
    end

end
