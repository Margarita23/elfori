require "test_helper"

class Admin::TileCollectionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_tile_collections_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_tile_collections_show_url
    assert_response :success
  end

  test "should get new" do
    get admin_tile_collections_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_tile_collections_create_url
    assert_response :success
  end

  test "should get edit" do
    get admin_tile_collections_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_tile_collections_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_tile_collections_destroy_url
    assert_response :success
  end
end
