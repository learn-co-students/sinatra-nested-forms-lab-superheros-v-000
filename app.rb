require_relative 'config/environment'

class App < Sinatra::base

  get '/' do
    "Hello"
  end

end
