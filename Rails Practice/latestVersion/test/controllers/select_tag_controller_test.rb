require 'test_helper'

class SelectTagControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get select_tag_index_url
    assert_response :success
  end

  test "should get show" do
    get select_tag_show_url
    assert_response :success
  end

  test "should get new" do
    get select_tag_new_url
    assert_response :success
  end

  test "should get delete" do
    get select_tag_delete_url
    assert_response :success
  end

  test "should get edit" do
    get select_tag_edit_url
    assert_response :success
  end

end
