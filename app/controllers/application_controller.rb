require 'sinatra/base'
require_relative '../../app/models/superhero'
require_relative '../../app/models/team'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero  
  end

  post '/team' do

    @team = Team.new(params[:team])

    params[:team][:members].each do |member|
      Superhero.new(member)
    end

    @superheros = Superhero.all

    erb :team
  end

end
