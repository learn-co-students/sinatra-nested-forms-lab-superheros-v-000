require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :'super_hero'
    end

    post '/teams' do
            binding.pry
      @team = Team.create(name: params[:team][:name], motto: params[:team][:motto])

      params[:team][:members].each do |details|
        @member = Member.new(details)
        @member.team = @team
        @member.save
      end

      erb :'team'
    end


end
