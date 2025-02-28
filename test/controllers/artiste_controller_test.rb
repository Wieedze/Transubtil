require "test_helper"

class ArtisteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get artiste_index_url
    assert_response :success
  end

  test "should get show" do
    get artiste_show_url
    assert_response :success
  end
end
