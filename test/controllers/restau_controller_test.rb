require 'test_helper'

class RestauControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get restau_index_url
    assert_response :success
  end

  test "should get show" do
    get restau_show_url
    assert_response :success
  end

end
