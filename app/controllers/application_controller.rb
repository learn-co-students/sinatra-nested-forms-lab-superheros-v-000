require 'sinatra/base'
#require 'pry'

# when I try to run my sinatra app under ... foldername .. the process immediately returns and doesnt bind to the ip or port as a listener so I can connect with the browser.
# if I put a puts statement in the 'controller' file my message is printed to the console and then the process just exist - no webserver runs

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

   post '/teams' do
      @team = Team.new(params[:team])

    	params[:team][:heroes].each do |member|
    		SuperHero.new(member)
    	end

    	@heroes = SuperHero.all

    	erb :'/team'
    end
  end
