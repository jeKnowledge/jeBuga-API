require 'test_helper'

class UsersFlowTest < ActionDispatch::IntegrationTest
  test "can create user and login" do
    post "/v1/users",
      params:
      {
        "user": {
          "email": "email_example@example.com",
          "password": "password_example"
        }
      }
    assert_response :created

  end
end
