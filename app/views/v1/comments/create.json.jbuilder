json.data do
  json.comment do
    comment = @comment
    json.partial! comment
  end
end
