require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :'index'
    end

    post '/team' do
      @team = Team.new({name: params[:team][:name], motto: params[:team][:motto]})
      
      @members = params[:team][:members].collect do |att|
        member = Member.new({name: att[:name], power: att[:power], biography: att[:biography]})
      end

      erb :'team'
    end


end
