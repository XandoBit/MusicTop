require 'test_helper'

class AyudaControllerTest < ActionController::TestCase
  test "should get help" do
    get :help
    assert_response :success
  end

end
