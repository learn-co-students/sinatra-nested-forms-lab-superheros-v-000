require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :new
    end

    post '/teams' do
      @team = Team.new(params[:team])
      @members = params[:team][:members].collect do |member|
        Superhero.new(member)
      end
      erb :team
    end
end
