require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :'../views/super_hero'
    end

    post '/teams' do
      @team = Team.new
      @team.name = params[:team][:name]
      @team.motto = params[:team][:motto]

      @superhero_1 = Superhero.new
      @superhero_1.name = params[:team][:members][0][:name]
      @superhero_1.power = params[:team][:members][0][:power]
      @superhero_1.bio = params[:team][:members][0][:bio]

      @superhero_2 = Superhero.new
      @superhero_2.name = params[:team][:members][1][:name]
      @superhero_2.power = params[:team][:members][1][:power]
      @superhero_2.bio = params[:team][:members][1][:bio]

      @superhero_3 = Superhero.new
      @superhero_3.name = params[:team][:members][2][:name]
      @superhero_3.power = params[:team][:members][2][:power]
      @superhero_3.bio = params[:team][:members][2][:bio]

      erb :'../views/team'
    end

end
