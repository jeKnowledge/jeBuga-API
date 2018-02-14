json.data do
  json.game do
    game = @game
    json.partial! game
  end
end
