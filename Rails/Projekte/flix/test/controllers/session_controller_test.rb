require 'test_helper'

class SessionControllerTest < ActionController::TestCase
  test "should get name" do
    get :name
    assert_response :success
  end

  test "should get email" do
    get :email
    assert_response :success
  end

  test "should get password:digest" do
    get :password:digest
    assert_response :success
  end

end
