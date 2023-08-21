require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get _user" do
    get users__user_url
    assert_response :success
  end
end
