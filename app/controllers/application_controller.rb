require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team][:name], params[:team][:motto])
      params[:team][:members].each do |m|
        Hero.new(m[:name], m[:bio], m[:power])
      end
      @team.import_heroes(Hero.all)

      erb :team
    end

end
