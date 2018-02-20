require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :new
    end

    post '/teams' do
        binding.pry
      @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])

      params[:team][:heros].each do |hero_data|
        Hero.create(hero_data)
      end

      @heros = Hero.all
      erb :show
    end

end
