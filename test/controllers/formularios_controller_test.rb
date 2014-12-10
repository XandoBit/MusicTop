require 'test_helper'

class FormulariosControllerTest < ActionController::TestCase
  test "should get form_get" do
    get :form_get
    assert_response :success
  end

  test "should get form_post" do
    get :form_post
    assert_response :success
  end

end
