class Api::GamesController < ActionController::Base
    skip_forgery_protection

    def create
        p params
        game = Game.new
        game.url = params["url"]
        game.score = params['score']
        game.save
        render json: game
    end

end

