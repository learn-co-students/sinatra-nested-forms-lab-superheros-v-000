require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :"teams/new"
    end

    post '/teams' do
      erb :"teams/show"
    end


end
