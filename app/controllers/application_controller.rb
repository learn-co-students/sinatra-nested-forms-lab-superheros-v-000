require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    # get '/team' do
    #   erb :team
    # end

    post '/teams' do
      @team = Team.new(params[:member])

      params[:team][:members].each do |details|
        Member.new(details)
      end

      @members = Member.all

      erb :team

end
end
