require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    params[:team][:members].each do |member| 
      Member.new(member[:name], member[:power], member[:bio])
    end

    @team = Team.new(params[:team][:name], params[:team][:motto])

    erb :team
  end
end
