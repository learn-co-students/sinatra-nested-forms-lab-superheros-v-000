require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :create
    end

    post '/teams' do
      @team = Team.new(team[:params])
    end

end
