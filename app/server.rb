require 'sinatra/base'

require_relative '../lib/game'
require_relative '../lib/player'
require_relative '../lib/computer'

class RockPaperScissors < Sinatra::Base

set :views,         Proc.new { File.join(root,        "views") }
set :public_folder, Proc.new { File.join(root, "..", "public") }
enable :sessions

player = Player.new(@name)
computer = Computer.new
game = Game.new(player, computer)


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

  get '/game' do
    @name = session[:name]
    erb :game
  end

  post '/game/result' do
    @name = session[:name]
    @players_choice = params[:players_choice].to_sym
    @computers_choice = computer.choice
    @result = game.winner(@players_choice, @computers_choice)
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
