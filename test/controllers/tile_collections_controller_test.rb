require "test_helper"

class TileCollectionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tile_collections_index_url
    assert_response :success
  end

  test "should get show" do
    get tile_collections_show_url
    assert_response :success
  end
end
