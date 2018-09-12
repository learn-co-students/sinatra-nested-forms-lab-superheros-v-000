require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end


    post '/teams' do
      @team = Team.new(params[:team]) #storing in variable gives show.erb something to call .name and other methods on

      params[:team][:heroes].each do |details|
        Superhero.new(details)
      end

      @heroes = Superhero.all #can then call on with index number

      erb :team
    end


end
