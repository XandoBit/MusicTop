require 'test_helper'

class CdTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should be valid" do
    assert @cd.valid?
  end

  test "user id should be present" do
    @cd.user_id = nil
    assert_not @cd.valid?
  end

  test "nombre should be present " do
    @cd.descripcion = "   "
    assert_not @cd.valid?
  end

  test "descripcion should be at most 300 characters" do
    @cd.descripcion = "a" * 300
    assert_not @cd.valid?
  end

   test "grupo should be present " do
    @cd.grupo = "   "
    assert_not @cd.valid?
  end
   test "enlace should be present " do
    @cd.enlace = "   "
    assert_not @cd.valid?
  end
   test "titulo should be present " do
    @cd.titulo = "   "
    assert_not @cd.valid?
  end

  test "order should be most recent first" do
    assert_equal Cd.first, cds(:most_recent)
  end
end
