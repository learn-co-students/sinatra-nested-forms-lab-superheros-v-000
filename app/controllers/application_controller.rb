require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    @team = params[:team]

    @member = []

    params[:team][:members].each do |m|
      @member << Superhero.new(m[:name], m[:power], m[:bio])
    end

    erb :team
  end

end
