require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/new_game' do
    erb :new_game
  end

  post '/game' do
    @name = params[:name]
    session[:name] = @name
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
