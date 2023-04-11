require "test_helper"

class SpectaclesControllerTest < ActionDispatch::IntegrationTest
  test "should get :index" do
    get spectacles_:index_url
    assert_response :success
  end

  test "should get :new" do
    get spectacles_:new_url
    assert_response :success
  end

  test "should get :create:" do
    get spectacles_:create:_url
    assert_response :success
  end
end
