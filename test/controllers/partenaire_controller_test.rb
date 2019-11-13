require 'test_helper'

class PartenaireControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get partenaire_index_url
    assert_response :success
  end

  test "should get show" do
    get partenaire_show_url
    assert_response :success
  end

end
