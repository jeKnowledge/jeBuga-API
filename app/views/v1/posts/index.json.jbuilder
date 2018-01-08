json.data do
  json.posts @posts do |post|
    json.partial! post
  end
end
