require 'sinatra/base'

class RockScissor < Sinatra::Base
  get '/' do
    'Hello RockScissor!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
