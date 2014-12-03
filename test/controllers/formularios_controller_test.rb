require 'test_helper'

class FormulariosControllerTest < ActionController::TestCase
  test "should get forms" do
    get :forms
    assert_response :success
  end

end
