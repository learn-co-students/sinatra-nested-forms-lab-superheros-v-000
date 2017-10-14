require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do

      erb :super_hero

    end

    post '/team' do
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]
      @team_members = []

      # params[:team][:hero].each do |hero|
      #   name, power, biography = hero[:name], hero[:power], hero[:biography]
      #   @team_members << [name, power, biography]
      # end

      erb :team
    end


end
