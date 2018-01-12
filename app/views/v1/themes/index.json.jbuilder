json.data do
  json.themes @themes do |theme|
    json.partial! theme
  end
end
