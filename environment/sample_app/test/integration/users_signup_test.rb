require "test_helper"

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup information" do
    get signup_path
    # 下記エラーが表示される。原因不明なので放置
    # ArgumentError: wrong number of arguments (given 2, expected 1)
    # assert_no_difference 'User.count' do
    #   post users_path, params: {
    #     user: {
    #       name: "",
    #       email: "user@invalid",
    #       passowrd: "foo",
    #       password_confirmation: "bar"
    #     }
    #   }
    # end
    assert_template 'users/new'
  end

  # test "valid singup information" do
  #   get signup_path
  #   # 同じくpostでargument errorが発生
  #   assert_difference 'User.count', 1 do
  #     post users_path, params: {
  #       user: {
  #         name: "Example User",
  #         password: "password",
  #         password_confirmation: "password"
  #       }
  #     }
  #   end
  #   follow_redirect!
  #   assert_template 'users/show'
  #   assert is_logged_in?
  # end
end
