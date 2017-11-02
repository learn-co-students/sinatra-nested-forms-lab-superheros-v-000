require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :'super_hero'
    end

    post '/team' do
      @team = params[:team][:name]
      @motto = params[:team][:motto]
      @hash = params[:team][:member]
      erb :'team'
    end
end
