require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :index
  end

  post '/teams' do
    @team = Team.new(params[:team])

    params[:team][:members].each do |member_attributes|
      SuperHeroe.new(member_attributes)
    end
    @super_heroes = SuperHeroe.all

    erb :team
  end
end
