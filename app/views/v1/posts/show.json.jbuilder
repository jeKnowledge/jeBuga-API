json.data do
  json.post do
    post = @post
    json.partial! post
    json.comments @comments do |comment|
      json.partial! comment
    end
  end
end
