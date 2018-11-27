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
        binding.pry
        hero.name = hero_data["member#{index + 1}_name".to_sym]
        hero.power = hero_data["member#{index + 1}_power".to_sym]
        hero.bio = hero_data["member#{index + 1}_bio".to_sym]
        @team.heroes << hero
        # binding.pry
      end
      @team
        # binding.pry
      erb :show
    end

    # get '/teams' do
    #   erb :show
    # end

end
