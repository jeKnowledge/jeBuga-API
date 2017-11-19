require 'test_helper'

class SessionsFlowTest < ActionDispatch::IntegrationTest
  test "should login user" do
    post "/v1/sessions",
      params:
      {
        "email": "example@example.com",
        "password": "example"
      }
    assert_response :created
  end
end
