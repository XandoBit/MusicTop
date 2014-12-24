require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:adan)
  end

  test "unsuccessful edit" do
    get edit_user_path(@user)
    assert_template 'users/edit'
    patch user_path(@user), user: { name:  "",
                                    email: "xxx@invalid",
                                    password:              "xxxxxx",
                                    password_confirmation: "xxxxxx" }
    assert_template 'users/edit'
  end
end