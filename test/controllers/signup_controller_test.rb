require 'test_helper'

class SignupControllerTest < ActionController::TestCase
  test "should get intro" do
    get :intro
    assert_response :success
  end

end
