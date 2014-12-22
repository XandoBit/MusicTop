require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, user: { nombre:  "",
                               email: "user@invalid",
                               pass:              "xxxxxx",
                               password_digest:   "xxxxxx",
                           }
    end
    assert_template 'users/new'
    assert is_logged_in?
  end
end
