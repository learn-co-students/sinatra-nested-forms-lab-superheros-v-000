require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    post '/teams' do

      @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])

      params[:team][:heroes].each_with_index do |hero_data, index|
        hero = Hero.new
        hero.name = params[:team][:heroes][0]["member#{index + 1}_name"]
        hero.power = params[:team][:heroes][0]["member#{index + 1}_power"]
        hero.bio = params[:team][:heroes][0]["member#{index + 1}_bio"]
        @team.heroes << hero
      end
      # binding.pry
      erb :show
    end

    get '/teams' do
      erb :show
    end

end
