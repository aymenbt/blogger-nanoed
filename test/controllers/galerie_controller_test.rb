require 'test_helper'

class GalerieControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get galerie_index_url
    assert_response :success
  end

end
