json.data do
  json.theme do
    theme = @theme
    json.partial! theme
  end
end
