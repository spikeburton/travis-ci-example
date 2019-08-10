require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    "Hello from Travis CI"
  end
end
