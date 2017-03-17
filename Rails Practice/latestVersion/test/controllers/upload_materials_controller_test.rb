require 'test_helper'

class UploadMaterialsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get upload_materials_index_url
    assert_response :success
  end

  test "should get show" do
    get upload_materials_show_url
    assert_response :success
  end

  test "should get edit" do
    get upload_materials_edit_url
    assert_response :success
  end

  test "should get new" do
    get upload_materials_new_url
    assert_response :success
  end

  test "should get delete" do
    get upload_materials_delete_url
    assert_response :success
  end

end
