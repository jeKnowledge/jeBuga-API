json.data do
  json.games @games do |game|
    json.partial! game
  end
end
