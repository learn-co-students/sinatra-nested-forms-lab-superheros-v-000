require 'sinatra/base'

class App < Sinatra::Base
    set :root, '/home/robeymc-19419/code/labs/sinatra-nested-forms-lab-superheros-v-000'
    set :views, Proc.new { File.join(root, "/views/") }

    get '/' do
      erb :index
    end

    post '/teams' do
      @team = Team.new(params[:team][:name], params[:team][:motto])

      params[:team][:members].each do |hero|
        Superhero.new(hero[:name], hero[:power], hero[:bio])
      end

      @heroes = Superhero.all
      erb :players
    end

end
