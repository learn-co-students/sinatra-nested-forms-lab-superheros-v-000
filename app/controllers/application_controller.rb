require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      erb :team
      # iterate through params - .each.with_index
      params[:team][:members].each.with_index do |value, index|
        # puts "#{index}: #{value}"
        @hero_name = value[:name]
        @hero_power = value[:power]
        @hero_bio = value[:bio]
        # binding.pry
      end
      # *look in Sinatra Nested Forms lab
      # ?? iterate in this file?
    end


end
