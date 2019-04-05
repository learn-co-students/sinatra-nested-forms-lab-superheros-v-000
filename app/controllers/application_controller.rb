require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


    get '/' do
      erb :super_hero
    end

    post '/new' do

      @team.name= params[:team][:name]  #params['name']
      @team.motto= params[:team][:motto]

      params[:team][:members].each do |m|
        Hero.new(m)
      end

      binding.pry
      
      @heros= Hero.all

      erb  :team
    end

end
