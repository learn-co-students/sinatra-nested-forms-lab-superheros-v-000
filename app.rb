require './config/environment'

module SuperHeroLab
  class App < Sinatra::Base

    get '/' do
      erb :index
    end

    post '/teams' do
      @team = Team.new(params["team"]["name"], params["team"]["motto"])
      params["team"]["heroes"].each do |details|
        Hero.new(details["name"], details["power"], details["biography"])
      end

      @heroes = Hero.all

      erb :show
    end

  end
end