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


  test "email unicio" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end

  test "email addresses should be saved as lower-case" do
    mixed_case_email = "Foo@ExAMPle.CoM"
    @user.email = mixed_case_email
    @user.save
    assert_equal mixed_case_email.downcase, @user.reload.email
  end

  test "password debe tener un minimo de cadena" do
    @user.pass = @user.password_digest = "a" * 5
    assert_not @user.valid?
  end

end
