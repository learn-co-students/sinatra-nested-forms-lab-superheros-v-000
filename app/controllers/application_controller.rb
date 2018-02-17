require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      binding.pry
      @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])

      members = params[:team][:members]

      @super_heroes = members.collect do |hero_data|
        SuperHero.new({name: hero_data[:name], power: hero_data[:power], bio: hero_data[:bio]})
      end
      erb :team
    end

end
