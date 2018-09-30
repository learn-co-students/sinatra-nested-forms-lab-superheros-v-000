require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :'../views/super_hero'
    end

    post '/teams' do
      @params = params
      @members = @params[:team][:member].map do |member|
        new_member = Member.new(member[:name], member[:power], member[:bio])
      end
  

      erb :'../views/team'
    end

end
