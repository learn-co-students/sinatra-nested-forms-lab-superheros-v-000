require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    post '/teams' do

      Team.new(params)

      params['team']['members'].each{ |member_info|
        Hero.new(member_info)
      }

      erb :team
    end
end
