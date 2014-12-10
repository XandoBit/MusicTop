require 'test_helper'

class UsuarioTest < ActiveSupport::TestCase
   def setup
    @user = Usuario.new(nombre: "Example User", contraseña: "xxx")
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
    @user.contraseña = "a" * 10
    assert_not @user.valid?
  end

end
