require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = params[:team][:name]
      @motto = params[:team][:motto]
      @hero_info = params[:team][:members].map{|h| h.values}
      erb :team
    end


end
