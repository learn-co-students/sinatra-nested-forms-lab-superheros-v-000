ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require_all 'app'

# Register ERB as handler for .html.erb, like Rails
Tilt.register Tilt::ERBTemplate, 'html.erb'
