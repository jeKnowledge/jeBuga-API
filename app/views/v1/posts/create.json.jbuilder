json.data do
  json.post do
    post = @post
    json.partial! post
  end
end
