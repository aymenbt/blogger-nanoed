require 'test_helper'

class NanteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get nante_index_url
    assert_response :success
  end

  test "should get show" do
    get nante_show_url
    assert_response :success
  end

end
