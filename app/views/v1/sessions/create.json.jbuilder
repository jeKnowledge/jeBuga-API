json.data do
  json.user do
    json.(
      @user,
      :authentication_token
    )
  end
end
