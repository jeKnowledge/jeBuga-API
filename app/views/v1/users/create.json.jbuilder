json.data do
  json.user do
    json.(
      @user,
      :id,
      :username
    )
  end
end
