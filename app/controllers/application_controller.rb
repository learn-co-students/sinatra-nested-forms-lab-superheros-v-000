require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    @team = params["team"]
    @members = []
    params["team"]["members"].each do |member|
      @members << member
    end
    erb :team

  end



end
