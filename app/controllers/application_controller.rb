require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    post '/teams' do
      # binding.pry
      @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])

      params[:team].each do |hero_data|
        binding.pry
        hero = Hero.new
        hero.name = hero_data[:name]
        hero.power = hero_data[:power]
        ship.bio = hero_data[:bio]
        @team.heroes << hero
      end

      erb :show
    end

end
