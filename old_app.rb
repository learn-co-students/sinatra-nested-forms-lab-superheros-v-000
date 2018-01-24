# # require './config/environment'
# require 'sinatra/base'
# require 'pry'
#
# class App < Sinatra::Base
#
#     set :views, Proc.new { File.join(root, "../views/") }
#
#     get '/' do
#       erb :'/index.html'
#     end
#
#     get '/superheroes' do
# binding.pry
#       # erb :'/superhero'
#     end
#
#     post '/superheroes' do
#       @superhero = SuperHero.new(name: params[:superhero][:name], power: params[:superhero][:power], bio: params[:superhero][:bio])
#       @superhero.save
#
#       erb: '/superhero'
#     end
#
#     get '/team' do
#       erb :'/team'
#     end
#
# end
