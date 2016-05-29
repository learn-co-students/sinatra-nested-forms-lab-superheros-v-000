require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      # binding.pry
      erb :new_heroes
    end

    # get '/superheroes' do
    #    @superhero = SuperHero.new(params)
    #       @name = params[:name]
    #       @power = params[:power]
    #       @bio = params[:bio]
    #
    #       erb :super_hero
    # end

    post '/teams' do
  # binding.pry
      @team = Team.new(params)
        # @name = params[:name]
        # @motto = arams[:motto]
        # MEMBERS << @superhero
        params[:team][:member].each do |member, info|
          SuperHero.new(member)
        end
        @members = SUPERHEROES.all

      erb :team
    end
end
