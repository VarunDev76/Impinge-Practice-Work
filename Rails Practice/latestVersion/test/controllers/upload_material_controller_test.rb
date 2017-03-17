require 'test_helper'

class UploadMaterialControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get upload_material_index_url
    assert_response :success
  end

  test "should get show" do
    get upload_material_show_url
    assert_response :success
  end

  test "should get edit" do
    get upload_material_edit_url
    assert_response :success
  end

  test "should get new" do
    get upload_material_new_url
    assert_response :success
  end

  test "should get delete" do
    get upload_material_delete_url
    assert_response :success
  end

end
