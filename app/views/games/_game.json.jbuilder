json.extract! game, :id, :url, :score, :created_at, :updated_at
json.url game_url(game, format: :json)
