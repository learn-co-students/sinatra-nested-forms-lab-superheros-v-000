require 'sinatra/base'
#require 'pry'

puts 'ok'

# when I try to run my sinatra app under ... foldername .. the process immediately returns and doesnt bind to the ip or port as a listener so I can connect with the browser.
# if I put a puts statement in the 'controller' file my message is printed to the console and then the process just exist - no webserver runs

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

<<<<<<< HEAD
    post '/teams' do
      #binding.pry
      @team = Team.new(params[:team])
    	params[:team][:heroes].each do |details|
    		SuperHero.new(details)
    	end

    	@heroes = SuperHero.all

    	erb :'/team'
    end
  end
=======
=begin
     post '/teams' do
    @team_name = params[:team][:name]
    @team_motto = params[:team][:motto]
    @hero_name = []
    @hero_power = []
    @hero_bio = []
    @team_members = params[:team][:members]
    @team_members.each do |hero|
      @hero_name << hero[:name]
      @hero_power << hero[:power]
      @hero_bio << hero[:bio]
    end

    erb :team
  end
=end 

   post '/teams' do
      @team = Team.new(params[:team])

    	params[:team][:heroes].each do |details|
    		SuperHero.new(details)
    	end

    	@heroes = SuperHero.all

    	erb :'/team'
    end
end
>>>>>>> 9b9efe1f725bfac7e250f9f30e5ec83436edb25e
