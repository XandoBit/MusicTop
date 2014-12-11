require 'test_helper'

class UserTest < ActiveSupport::TestCase
     def setup
    @user = User.new(nombre: "Example User", email: "x@gmail.com",pass: "xxxxxx",password_digest: "xxxxxx")
  end

  test "should be valid" do
    assert @user.valid?
  end

   test "name should be present" do
    @user.nombre = "     "
    assert_not @user.valid?
  end

  test "name should not be too long" do
    @user.nombre = "a" * 51
    assert_not @user.valid?
  end

  test "email should not be too long" do
    @user.pass = "a" * 10
    assert_not @user.valid?
  end

end
